// ===================================================================================
// Copyright Guillaume Bonfante (Université de Lorraine), Jean-Yves Marion 
// (Université de Lorraine), Benjamin Rouxel, Fabrice Sabatier (INRIA), 
// Aurélien Thierry
// October 8th, 2015
// 
// email of the authors : Guillaume.Bonfante@loria.fr, Jean-Yves.Marion@loria.fr, 
// Fabrice.Sabatier@inria.fr
// 
// This software is a computer program whose purpose is to disassemble
// self-modifying binaries with overlapping instructions.
// 
// This software is governed by the CeCILL license under French law and
// abiding by the rules of distribution of free software.  You can  use, 
// modify and/ or redistribute the software under the terms of the CeCILL
// license as circulated by CEA, CNRS and INRIA at the following URL
// "http://www.cecill.info". 
// 
// As a counterpart to the access to the source code and  rights to copy,
// modify and redistribute granted by the license, users are provided only
// with a limited warranty  and the software's author,  the holder of the
// economic rights,  and the successive licensors  have only  limited
// liability. 
// 
// In this respect, the user's attention is drawn to the risks associated
// with loading,  using,  modifying and/or developing or reproducing the
// software by the user in light of its specific status of free software,
// that may mean  that it is complicated to manipulate,  and  that  also
// therefore means  that it is reserved for developers  and  experienced
// professionals having in-depth computer knowledge. Users are therefore
// encouraged to load and test the software's suitability as regards their
// requirements in conditions enabling the security of their systems and/or 
// data to be ensured and,  more generally, to use and operate it in the 
// same conditions as regards security. 
// 
// The fact that you are presently reading this means that you have had
// knowledge of the CeCILL license and that you accept its terms.
// ===================================================================================

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#ifdef _MSC_VER
# include <io.h>
#else
# include <unistd.h>
#endif

#include "input_elf_extract.h"
#include "swap.h"

#define __LIBELF_INTERNAL__ 1
#include "libelf.h"
#include "gelf.h"

static size_t read_all(int fd, uint8_t *buffer, size_t len) {
  size_t done = 0;

  while (done < len) {
    size_t n;
    n = read(fd, buffer + done, (long) (len - done));
    if (n <= 0)
      return done;
    done += n;
  }
  return done;
}

#define ELF_EXTRACT_MAIN_HACK_SCAN_LENGTH 96
/*!
 @brief Hack for find main() when symbols are stripped out

 When symbols are stripped, it's impossible to directly find
 the main address. The entrypoint is _start() function but this
 function call __libc_start_main via a jump *. The first argument
 of __libc_start_main is main address, so we are trying to
 extract main address from instruction setting the call stack.

 In x86 64-bit we look for mov $0xABCDEFGH,%rdi
 corresponding opcode is "48 c7 c7 GHEFCDAB", i.e. starting with "\110\307\307"

 In x86 32-bit we look for a more complex structure:
 two push of code addresses
 two push of registers
 one push of main address
 In order to have a substantial signature we check that the 8 high
 order bits of address are in the code section. (usually 0x08)

 */
static int elffile_extract_main_hack(program_dump_t* prg) {
  uint32_t scan_length;
  uint16_t sect_idx;
  add_t addr;
  const uint8_t *buffer;
  union {
    uint32_t int_val;
    uint8_t char_val[4];
  } main_addr;

  if (prg->entrypoints_nb == 0)
    return STATUS_INVALID_FILE;

  addr = prg->entrypoints[0];
  scan_length = ELF_EXTRACT_MAIN_HACK_SCAN_LENGTH;

  /* find section, check if the scan buffer fit inside */
  for (sect_idx = 0; sect_idx < prg->sections_nb; ++sect_idx) {
    if (addr >= prg->sections_hdr[sect_idx].VirtualAddress && addr + scan_length
        < prg->sections_hdr[sect_idx].VirtualAddress + prg->sections_hdr[sect_idx].Size)
      break;
  }
  if (sect_idx == prg->sections_nb)
    return STATUS_INVALID_FILE; /* not found */

  /* start searching opcode */
  buffer = program_dump_goto_bounded_const(prg, addr, scan_length);
  if (!buffer)
    return STATUS_INVALID_FILE;

  while (scan_length > 0) {
    if (prg->arch == BIT64) {
      /* __libc_start_main@plt call 64-bit signature */
      if (memcmp("\110\307\307", buffer, 3) == 0) {
        /* opcode found, main value follows */
        memcpy(main_addr.char_val, buffer + 3, 4);
        main_addr.int_val = LE32_TO_HOST(main_addr.int_val);
        break;
      }
    } else {
      /* __libc_start_main@plt call 32-bit signature */
      uint8_t code_addr_high = (uint8_t)(prg->entrypoints[0] >> 24);
      if (*buffer == 0x68)
        if (*(buffer + 4) == code_addr_high)
          if (*(buffer + 5) == 0x68)
            if (*(buffer + 9) == code_addr_high)
              if (*(buffer + 12) == 0x68) {
                memcpy(main_addr.char_val, buffer + 13, 4);
                main_addr.int_val = LE32_TO_HOST(main_addr.int_val);
                break;
              }
    }
    scan_length--;
    buffer++;
  }
  if (scan_length == 0)
    return STATUS_INVALID_FILE;

  if (program_dump_goto_const(prg, main_addr.int_val, NULL)) {
    uint32_t i;

    /* check if this entry point already exists */
    for (i = 0; i < prg->entrypoints_nb; i++)
      if (main_addr.int_val == prg->entrypoints[i])
        return STATUS_INVALID_FILE;

    prg->entrypoints = MY_REALLOC(prg->entrypoints, prg->entrypoints_nb + 1, add_t);
    prg->entrypoints_names = MY_REALLOC(prg->entrypoints_names, prg->entrypoints_nb + 1, char *);
    prg->entrypoints[prg->entrypoints_nb] = main_addr.int_val;
    prg->entrypoints_names[prg->entrypoints_nb] = strdup("extracted_main");
    prg->entrypoints_nb++;
    return STATUS_OK;
  }
  return STATUS_INVALID_FILE;
}

status_t input_elf_extract(program_dump_t** pprg, FILE* fp, uint32_t examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions) {
  uint16_t dst_sec_idx, elf_seg_idx, dst_sec_nb;
  Elf *elf;
  Elf_Scn *scn = NULL;
  GElf_Ehdr ehdr;
  GElf_Shdr shdr;
  program_dump_t* prg;
  int fd;

  /* WARNING: Don't use fp, but use fd. */
  fd = fileno(fp);
  elf_version(EV_CURRENT);
  elf = elf_begin(fd, ELF_C_READ, NULL);

  prg = program_dump_alloc();
  *pprg = prg;

  prg->arch = (gelf_getclass(elf) == ELFCLASS64) ? BIT64 : BIT32;

  gelf_getehdr(elf, &ehdr);

  /* find the number of sections (loadable segments) */
  for (elf_seg_idx = 0, dst_sec_nb = 0; elf_seg_idx < ehdr.e_phnum; elf_seg_idx++) {
    GElf_Phdr phdr;

    gelf_getphdr(elf, elf_seg_idx, &phdr);
    if (phdr.p_type == PT_LOAD) {
      dst_sec_nb++;
    }
  }
  /* Allocate the sections */
  prg->sections_hdr = MY_MALLOC(dst_sec_nb, program_section_desc_t);
  prg->sections = MY_MALLOC(dst_sec_nb, uint8_t *);

  /* copy data inside sections */
  for (elf_seg_idx = 0, dst_sec_idx = 0; elf_seg_idx < ehdr.e_phnum; elf_seg_idx++) {
    size_t read;
    GElf_Phdr phdr;
    add_t add_start, add_end;
    size_t size;

    /* skip not loadable segments */
    gelf_getphdr(elf, elf_seg_idx, &phdr);
    if (phdr.p_type != PT_LOAD) {
      continue;
    }

    /* align segments to 4KB */
    add_start = phdr.p_vaddr & ~(4095);
    add_end = ((phdr.p_vaddr + phdr.p_memsz) | (4095)) + 1;
    size = (size_t) add_end - add_start;

    /* fill sections_hdr */
    prg->sections_hdr[dst_sec_idx].VirtualAddress = add_start;
    prg->sections_hdr[dst_sec_idx].Size = add_end - add_start;
    snprintf(prg->sections_hdr[dst_sec_idx].Name, 8, "%i", dst_sec_idx);
    prg->sections_hdr[dst_sec_idx].Name[7] = '\0';

    /* alloc and initialize at 0 */
    prg->sections[dst_sec_idx] = MY_ZALLOC(size, uint8_t);
    if (prg->sections[dst_sec_idx] == NULL) {
      //fprintf(stderr, "ERROR: One section at least is too big\n");
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    /* seek position in ELF file */
    if (lseek(fd, phdr.p_offset, SEEK_SET) != phdr.p_offset) {
      //fprintf(stderr, "ERROR: One section at least is out of file\n");
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    /* copy all content of section into buffer of prg->sections[sect_idx] */
    /* DON'T USE FREAD BECEAUSE LIBELF HAS ACCESSED TO THE FILE DIRECTLY BY FD */
    read = read_all(fd, prg->sections[dst_sec_idx] + (phdr.p_vaddr - add_start), phdr.p_filesz);
    if (read != phdr.p_filesz) {
      //fprintf(stderr, "WARNING: One section is bigger than file, end is filled with zeros\n");
      continue;
    }

    /* next segment */
    dst_sec_idx++;
  }
  prg->sections_nb = dst_sec_idx;

  scn = NULL;
  while ((scn = elf_nextscn(elf, scn)) != NULL) {
    gelf_getshdr(scn, &shdr);
    if (shdr.sh_type == SHT_DYNSYM)
      break;
  }

  prg->entrypoints_nb = 0;
  if (!examine_export || !scn) {
    /* no symbols */
    prg->entrypoints = MY_MALLOC(1, add_t);
    prg->entrypoints_names = MY_MALLOC(1, char *);

    prg->entrypoints[0] = ehdr.e_entry;
    prg->entrypoints_names[0] = strdup("main");
    prg->entrypoints_nb++;
  } else {
    Elf_Data *data;
    uint32_t symb_nb, i, func_symb;

    data = elf_getdata(scn, NULL);
    symb_nb = (uint32_t)(shdr.sh_size / shdr.sh_entsize);

    /* count the number of defined function symbols */
    for (i = 0, func_symb = 0; i < symb_nb; i++) {
      GElf_Sym sym;

      gelf_getsym(data, i, &sym);
      if (GELF_ST_TYPE(sym.st_info) == STT_FUNC && sym.st_value != 0) {
        func_symb++;
      }
    }

    /* allocate enough space */
    prg->entrypoints = MY_MALLOC(func_symb+1, add_t);
    prg->entrypoints_names = MY_MALLOC(func_symb+1, char *);

    /* main entrypoint */
    prg->entrypoints[0] = ehdr.e_entry;
    prg->entrypoints_names[0] = strdup("main");
    prg->entrypoints_nb++;

    /* fill the structures */
    for (i = 0; i < symb_nb; i++) {
      GElf_Sym sym;
      char *name;

      gelf_getsym(data, i, &sym);

      /* skip not function symbol, or external symbols */
      if (GELF_ST_TYPE(sym.st_info) != STT_FUNC || sym.st_value == 0) {
        continue;
      }

      name = strdup(elf_strptr(elf, shdr.sh_link, sym.st_name));

      /* add the entry point */
      prg->entrypoints[prg->entrypoints_nb] = sym.st_value;
      prg->entrypoints_names[prg->entrypoints_nb] = name;
      prg->entrypoints_nb++;
    }
  }
  elf_end(elf);

  elffile_extract_main_hack(prg);
  return STATUS_OK;
}
