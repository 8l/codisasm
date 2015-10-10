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

#include <string.h>

#include "input_extract.h"

#include "input_pe32_extract.h"
#include "input_elf_extract.h"
#include "input_raw_extract.h"
#include "file_access.h"

#define ELFMAGIC "\177ELF"
#define ELFMAGIC_LEN 4
static int is_elf_file(FILE* fp) {
  char magic[ELFMAGIC_LEN];

  if (fseek(fp, 0L, SEEK_SET) != 0)
    goto not_elf;
  if (fread_le_swap(&magic, 1, ELFMAGIC_LEN, fp) != ELFMAGIC_LEN)
    goto not_elf;
  if (strncmp(magic, ELFMAGIC, ELFMAGIC_LEN) != 0)
    goto not_elf;

  rewind(fp);
  return 1;

  not_elf: rewind(fp);
  return 0;
}

#define HDR_OFFSET 60
#define PEMAGIC_LEN 4
#define PEMAGIC "PE\000\000"
static int is_pe_file(FILE* fp) {
  char magic[PEMAGIC_LEN];
  uint32_t pe_hdr_add;

  /* test PE */
  if (fseek(fp, HDR_OFFSET, SEEK_SET) != 0)
    goto not_pe;
  if (fread_le_swap_U32(&pe_hdr_add, 1, fp) != 1)
    goto not_pe;
  if (fseek(fp, pe_hdr_add, SEEK_SET) != 0)
    goto not_pe;
  if (fread_le_swap(magic, 1, PEMAGIC_LEN, fp) != PEMAGIC_LEN)
    goto not_pe;
  if (strncmp(magic, PEMAGIC, PEMAGIC_LEN) != 0)
    goto not_pe;

  /* PE File */
  rewind(fp);
  return 1;

  not_pe: rewind(fp);
  return 0;
}

status_t program_dump_extract(program_dump_t** pprg, uint32_t file_format, FILE* fp,
    int examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions) {
  status_t (*extract)(program_dump_t**, FILE*, uint32_t, char, char, char);

  *pprg = NULL;
  switch (file_format) {
  case AUTO_FORMAT: {
    if (is_elf_file(fp)) {
      extract = input_elf_extract;
    } else if (is_pe_file(fp)) {
      extract = input_pe32_extract;
    } else {
      /* else unknown format */
      return STATUS_UNKNOWN_FORMAT;
    }
    break;
  }
  case ELF_FORMAT:
    extract = input_elf_extract;
    break;
  case PE32_FORMAT:
    extract = input_pe32_extract;
    break;
  case RAW_FORMAT:
    extract = input_raw_extract;
    break;
  default:
    MY_ASSERT_MSG(0, "Unknown file_format");
    return STATUS_UNKNOWN_FORMAT;
  }
  return extract(pprg, fp, examine_export, examine_vftables, examine_each_byte, examine_subfunctions);
}
