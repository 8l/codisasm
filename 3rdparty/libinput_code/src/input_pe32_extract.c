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

#include "input_pe32_extract.h"
#include "input_pe32_struct.h"
#include "file_access.h"

#define HDR_OFFSET 60
#define PEFILE_MAGIC_LENGTH 4

/*!
 @brief Equivalent of fread for IMAGE_FILE_HEADER with preservation of
 little-endianess even on a big endian host.
 @param pe_hdr Destination buffer.
 @param fp Source file.
 */
static size_t fread_pe_hdr(IMAGE_FILE_HEADER* pe_hdr, FILE* fp) {
  size_t ret;

  ret = fread(pe_hdr, sizeof(IMAGE_FILE_HEADER), 1, fp);
  if (ret != 1)
    return ret;

  pe_hdr->Machine = LE16_TO_HOST(pe_hdr->Machine);
  pe_hdr->NumberOfSections = LE16_TO_HOST(pe_hdr->NumberOfSections);
  pe_hdr->TimeDateStamp = LE32_TO_HOST(pe_hdr->TimeDateStamp);
  pe_hdr->PointerToSymbolTable = LE32_TO_HOST(pe_hdr->PointerToSymbolTable);
  pe_hdr->NumberOfSymbols = LE32_TO_HOST(pe_hdr->NumberOfSymbols);
  pe_hdr->SizeOfOptionalHeader = LE16_TO_HOST(pe_hdr->SizeOfOptionalHeader);
  pe_hdr->Characteristics = LE16_TO_HOST(pe_hdr->Characteristics);

  return ret;
}

/*!
 @brief Equivalent of fread for IMAGE_OPTIONAL_HEADER with preservation of
 little-endianess even on a big endian host.
 @param hdr Destination buffer.
 @param fp Source file.
 */
static size_t fread_opt_hdr(IMAGE_OPTIONAL_HEADER *hdr, FILE* fp) {
  size_t ret;
  int i;

  ret = fread(hdr, sizeof(IMAGE_OPTIONAL_HEADER), 1, fp);
  if (ret != 1)
    return ret;

  //WORD MAGIC ?
  hdr->SizeOfCode = LE32_TO_HOST(hdr->SizeOfCode);
  hdr->SizeOfInitializedData = LE32_TO_HOST(hdr->SizeOfInitializedData);
  hdr->SizeOfUninitializedData = LE32_TO_HOST(hdr->SizeOfUninitializedData);
  hdr->AddressOfEntryPoint = LE32_TO_HOST(hdr->AddressOfEntryPoint);
  hdr->BaseOfCode = LE32_TO_HOST(hdr->BaseOfCode);
  hdr->BaseOfData = LE32_TO_HOST(hdr->BaseOfData);
  hdr->ImageBase = LE32_TO_HOST(hdr->ImageBase);
  hdr->SectionAlignment = LE32_TO_HOST(hdr->SectionAlignment);
  hdr->FileAlignment = LE32_TO_HOST(hdr->FileAlignment);
  hdr->MajorOperatingSystemVersion = LE16_TO_HOST(hdr->MajorOperatingSystemVersion);
  hdr->MinorOperatingSystemVersion = LE16_TO_HOST(hdr->MinorOperatingSystemVersion);
  hdr->MajorImageVersion = LE16_TO_HOST(hdr->MajorImageVersion);
  hdr->MinorImageVersion = LE16_TO_HOST(hdr->MinorImageVersion);
  hdr->MajorSubsystemVersion = LE16_TO_HOST(hdr->MajorSubsystemVersion);
  hdr->MinorSubsystemVersion = LE16_TO_HOST(hdr->MinorSubsystemVersion);
  hdr->Win32VersionValue = LE32_TO_HOST(hdr->Win32VersionValue);
  hdr->SizeOfImage = LE32_TO_HOST(hdr->SizeOfImage);
  hdr->SizeOfHeaders = LE32_TO_HOST(hdr->SizeOfHeaders);
  hdr->CheckSum = LE32_TO_HOST(hdr->CheckSum);
  hdr->Subsystem = LE16_TO_HOST(hdr->Subsystem);
  hdr->DllCharacteristics = LE16_TO_HOST(hdr->DllCharacteristics);
  hdr->SizeOfStackReserve = LE32_TO_HOST(hdr->SizeOfStackReserve);
  hdr->SizeOfStackCommit = LE32_TO_HOST(hdr->SizeOfStackCommit);
  hdr->SizeOfHeapReserve = LE32_TO_HOST(hdr->SizeOfHeapReserve);
  hdr->SizeOfHeapCommit = LE32_TO_HOST(hdr->SizeOfHeapCommit);
  hdr->LoaderFlags = LE32_TO_HOST(hdr->LoaderFlags);
  hdr->NumberOfRvaAndSizes = LE32_TO_HOST(hdr->NumberOfRvaAndSizes);

  for (i = 0; i < IMAGE_NUMBEROF_DIRECTORY_ENTRIES; i++) {
    hdr->DataDirectory[i].VirtualAddress = LE32_TO_HOST(hdr->DataDirectory[i].VirtualAddress);
    hdr->DataDirectory[i].Size = LE32_TO_HOST(hdr->DataDirectory[i].Size);
  }
  return ret;
}

/*!
 @brief Equivalent of fread for IMAGE_OPTIONAL_HEADER64 with preservation of
 little-endianess even on a big endian host.
 @param hdr Destination buffer.
 @param fp Source file.
 */
static size_t fread_opt_hdr64(IMAGE_OPTIONAL_HEADER64 *hdr, FILE* fp) {
  size_t ret;
  int i;

  ret = fread(hdr, sizeof(IMAGE_OPTIONAL_HEADER64), 1, fp);
  if (ret != 1)
    return ret;

  //WORD MAGIC ?
  hdr->SizeOfCode = LE32_TO_HOST(hdr->SizeOfCode);
  hdr->SizeOfInitializedData = LE32_TO_HOST(hdr->SizeOfInitializedData);
  hdr->SizeOfUninitializedData = LE32_TO_HOST(hdr->SizeOfUninitializedData);
  hdr->AddressOfEntryPoint = LE32_TO_HOST(hdr->AddressOfEntryPoint);
  hdr->BaseOfCode = LE32_TO_HOST(hdr->BaseOfCode);
  hdr->ImageBase = LE64_TO_HOST(hdr->ImageBase);
  hdr->SectionAlignment = LE32_TO_HOST(hdr->SectionAlignment);
  hdr->FileAlignment = LE32_TO_HOST(hdr->FileAlignment);
  hdr->MajorOperatingSystemVersion = LE16_TO_HOST(hdr->MajorOperatingSystemVersion);
  hdr->MinorOperatingSystemVersion = LE16_TO_HOST(hdr->MinorOperatingSystemVersion);
  hdr->MajorImageVersion = LE16_TO_HOST(hdr->MajorImageVersion);
  hdr->MinorImageVersion = LE16_TO_HOST(hdr->MinorImageVersion);
  hdr->MajorSubsystemVersion = LE16_TO_HOST(hdr->MajorSubsystemVersion);
  hdr->MinorSubsystemVersion = LE16_TO_HOST(hdr->MinorSubsystemVersion);
  hdr->Win32VersionValue = LE32_TO_HOST(hdr->Win32VersionValue);
  hdr->SizeOfImage = LE32_TO_HOST(hdr->SizeOfImage);
  hdr->SizeOfHeaders = LE32_TO_HOST(hdr->SizeOfHeaders);
  hdr->CheckSum = LE32_TO_HOST(hdr->CheckSum);
  hdr->Subsystem = LE16_TO_HOST(hdr->Subsystem);
  hdr->DllCharacteristics = LE16_TO_HOST(hdr->DllCharacteristics);
  hdr->SizeOfStackReserve = LE64_TO_HOST(hdr->SizeOfStackReserve);
  hdr->SizeOfStackCommit = LE64_TO_HOST(hdr->SizeOfStackCommit);
  hdr->SizeOfHeapReserve = LE64_TO_HOST(hdr->SizeOfHeapReserve);
  hdr->SizeOfHeapCommit = LE64_TO_HOST(hdr->SizeOfHeapCommit);
  hdr->LoaderFlags = LE32_TO_HOST(hdr->LoaderFlags);
  hdr->NumberOfRvaAndSizes = LE32_TO_HOST(hdr->NumberOfRvaAndSizes);

  for (i = 0; i < IMAGE_NUMBEROF_DIRECTORY_ENTRIES; i++) {
    hdr->DataDirectory[i].VirtualAddress = LE32_TO_HOST(hdr->DataDirectory[i].VirtualAddress);
    hdr->DataDirectory[i].Size = LE32_TO_HOST(hdr->DataDirectory[i].Size);
  }
  return ret;
}

/*!
 @brief Equivalent of fread for IMAGE_SECTION_HEADER with preservation of
 little-endianess even on a big endian host. Read multiple sections at once.
 @param sec_hdr Destination buffer array.
 @param fp Source file.
 */
static size_t fread_sections_hdr(IMAGE_SECTION_HEADER* sec_hdr, uint16_t count, FILE* fp) {
  size_t ret;
  uint16_t i;

  ret = fread(sec_hdr, sizeof(IMAGE_SECTION_HEADER), count, fp);

  for (i = 0; i < ret; i++) {
    sec_hdr[i].PhysicalAddress = LE32_TO_HOST(sec_hdr[i].PhysicalAddress); /* Union with VirtualSize; */
    sec_hdr[i].VirtualAddress = LE32_TO_HOST(sec_hdr[i].VirtualAddress);
    sec_hdr[i].SizeOfRawData = LE32_TO_HOST(sec_hdr[i].SizeOfRawData);
    sec_hdr[i].PointerToRawData = LE32_TO_HOST(sec_hdr[i].PointerToRawData);
    sec_hdr[i].PointerToRelocations = LE32_TO_HOST(sec_hdr[i].PointerToRelocations);
    sec_hdr[i].PointerToLinenumbers = LE32_TO_HOST(sec_hdr[i].PointerToLinenumbers);
    sec_hdr[i].NumberOfRelocations = LE16_TO_HOST(sec_hdr[i]. NumberOfRelocations);
    sec_hdr[i].NumberOfLinenumbers = LE16_TO_HOST(sec_hdr[i]. NumberOfLinenumbers);
    sec_hdr[i].Characteristics = LE32_TO_HOST(sec_hdr[i].Characteristics);
  }
  return ret;
}

/*!
 @brief Fix endianess of a IMAGE_EXPORT_DIRECTORY structure. We can't use a
 fread like function because pied structure is read from a buffer, i.e. not
 from a file.
 @param sec_hdr Destination buffer array.
 @param fp Source file.
 */
static void fix_pe_ied_endian(IMAGE_EXPORT_DIRECTORY* pied) {
  pied->Characteristics = LE32_TO_HOST(pied->Characteristics);
  pied->TimeDateStamp = LE32_TO_HOST(pied->TimeDateStamp);
  pied->MajorVersion = LE16_TO_HOST(pied->MajorVersion);
  pied->MinorVersion = LE16_TO_HOST(pied->MinorVersion);
  pied->Name = LE32_TO_HOST(pied->Name);
  pied->Base = LE32_TO_HOST(pied->Base);
  pied->NumberOfFunctions = LE32_TO_HOST(pied->NumberOfFunctions);
  pied->NumberOfNames = LE32_TO_HOST(pied->NumberOfNames);
  pied->AddressOfFunctions = LE32_TO_HOST(pied->AddressOfFunctions);
  pied->AddressOfNames = LE32_TO_HOST(pied->AddressOfNames);
  pied->AddressOfNameOrdinals = LE32_TO_HOST(pied->AddressOfNameOrdinals);
}

status_t input_pe32_extract(program_dump_t** pprg, FILE* fp, uint32_t examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions) {
  uint16_t sect_idx, rdata_idx=0, text_idx;
  char rdata_found=0, text_found=0;
  int virtualFcts_nb=0, subFcts_nb=0;
  size_t read, len;
  program_dump_t* prg;
  /* temporary pe32 and pe32+ fields */
  char pe_magic[PEFILE_MAGIC_LENGTH];
  add_t pe_image_base, pe_exporttable, pe_entrypoint;
  uint32_t pe_hdr_size;
  uint32_t pe_hdr_add;
  IMAGE_FILE_HEADER pe_hdr;
  IMAGE_SECTION_HEADER* pe_sections_hdr;
  IMAGE_EXPORT_DIRECTORY pe_ied;
  void *pe_ied_ptr;
  const char * k_undefined = "undefined";
  uint32_t *subfunctions_addr=NULL;
  uint32_t *subfunctions_addr_new=NULL;

  /* parse file header */
  if (fseek(fp, HDR_OFFSET, SEEK_SET) != 0 || fread_le_swap_U32(&pe_hdr_add, 1, fp) != 1 || fseek(
      fp, pe_hdr_add, SEEK_SET) != 0 || fread_le_swap(pe_magic, sizeof(uint8_t),
      PEFILE_MAGIC_LENGTH, fp) != PEFILE_MAGIC_LENGTH || fread_pe_hdr(&pe_hdr, fp) != 1) {
    //fprintf(stderr, "ERROR: Invalid PE header\n");
    return STATUS_INVALID_FILE;
  }

  prg = program_dump_alloc();
  *pprg = prg;

  /* parse optional header 16/32bits or 64 bits */
  if (pe_hdr.SizeOfOptionalHeader == sizeof(IMAGE_OPTIONAL_HEADER)) {
    /* The optional header (for 16/32bit PE files). */
    IMAGE_OPTIONAL_HEADER pe_opthdr;
    if (fread_opt_hdr(&pe_opthdr, fp) != 1) {
      //fprintf(stderr, "ERROR: Invalid PE32 optional header\n");
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    pe_image_base = pe_opthdr.ImageBase;
    pe_exporttable = pe_image_base + pe_opthdr.DataDirectory[0].VirtualAddress;

    prg->arch = BIT32;
    pe_entrypoint = pe_image_base + pe_opthdr.AddressOfEntryPoint;

  } else if (pe_hdr.SizeOfOptionalHeader == sizeof(IMAGE_OPTIONAL_HEADER64)) {
    /* The optional header (for 64bit PE files). */
    IMAGE_OPTIONAL_HEADER64 pe_opthdr64;
    if (fread_opt_hdr64(&pe_opthdr64, fp) != 1) {
      //fprintf(stderr, "ERROR: Invalid PE32+ optional header\n");
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    pe_image_base = pe_opthdr64.ImageBase;
    pe_exporttable = pe_image_base + pe_opthdr64.DataDirectory[0].VirtualAddress;

    prg->arch = BIT64;
    pe_entrypoint = pe_image_base + pe_opthdr64.AddressOfEntryPoint;
  } 
  else {
    printf("INFO from input_pe32_extract: optional header size mismatch, trying 32 bits with forward.\n");
    IMAGE_OPTIONAL_HEADER pe_opthdr;
    if (fread_opt_hdr(&pe_opthdr, fp) != 1) {
      //fprintf(stderr, "ERROR: Invalid PE32 optional header\n");
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    pe_image_base = pe_opthdr.ImageBase;
    pe_exporttable = pe_image_base + pe_opthdr.DataDirectory[0].VirtualAddress;

    prg->arch = BIT32;
    pe_entrypoint = pe_image_base + pe_opthdr.AddressOfEntryPoint;

    fseek(fp, pe_hdr.SizeOfOptionalHeader - sizeof(IMAGE_OPTIONAL_HEADER), SEEK_CUR);
  }

  /* parse section table (+1 for header)*/
  prg->sections_nb = pe_hdr.NumberOfSections + 1;
  prg->sections_hdr = MY_MALLOC(prg->sections_nb, program_section_desc_t);
  if (prg->sections_hdr == NULL) {
    //fprintf(stderr, "ERROR: Invalid PE: Too much sections\n");
    program_dump_free(prg);
    return STATUS_INVALID_FILE;
  }

  /* allocate an array IMAGE_SECTION_HEADER, we must check at least allocation
   status because pe_hdr.NumberOfSections is user-defined.
   */
  pe_sections_hdr = MY_MALLOC(pe_hdr.NumberOfSections, IMAGE_SECTION_HEADER);
  if (pe_sections_hdr == NULL) {
    //fprintf(stderr, "ERROR: Invalid PE: Too much sections\n");
    program_dump_free(prg);
    return STATUS_INVALID_FILE;
  }

  /* pe->sections_nb - 1 real sections and a custom for header */
  read = fread_sections_hdr(pe_sections_hdr, pe_hdr.NumberOfSections, fp);
  if (read != pe_hdr.NumberOfSections) {
    //fprintf(stderr, "ERROR: Invalid PE: Impossible to read all section headers\n");
    MY_FREE(pe_sections_hdr);
    program_dump_free(prg);
    return STATUS_INVALID_FILE;
  }

  /* last section represent the mapping of the header, size is the beginning of the lower section */
  pe_hdr_size = 0;
  for (sect_idx = 0; sect_idx < pe_hdr.NumberOfSections; ++sect_idx) {
    if (pe_hdr_size == 0 || pe_hdr_size > pe_sections_hdr[sect_idx].PointerToRawData)
      pe_hdr_size = pe_sections_hdr[sect_idx].PointerToRawData;
  }

  /* build the memory image */
  prg->sections = MY_ZALLOC(prg->sections_nb, uint8_t *);
  if (!prg->sections) {
    //fprintf(stderr, "ERROR: Invalid PE: Sections too big\n");
    MY_FREE(pe_sections_hdr);
    program_dump_free(prg);
    return STATUS_INVALID_FILE;
  }

  /* fill the last (header) custom section */
  sect_idx = prg->sections_nb - 1;
  prg->sections_hdr[sect_idx].Name[0] = 'H';
  prg->sections_hdr[sect_idx].Name[1] = 'D';
  prg->sections_hdr[sect_idx].Name[2] = 'R';
  prg->sections_hdr[sect_idx].Name[3] = '\0';
  prg->sections_hdr[sect_idx].VirtualAddress = pe_image_base;
  if (pe_hdr_size > 1024) pe_hdr_size=1024;       // Sality tip and trick 
  prg->sections_hdr[sect_idx].Size = pe_hdr_size;
  prg->sections[sect_idx] = MY_ZALLOC(pe_hdr_size, uint8_t);
  fseek(fp, 0L, SEEK_SET);
  read = fread(prg->sections[sect_idx], sizeof(uint8_t), pe_hdr_size, fp);
  //if (read != pe_hdr_size) {
  //  fprintf(stderr, "WARNING: One section is bigger than file, end is filled with zeros\n");
  //}

  /* fill all other headers and sections from pe_sections_hdr array */
  for (sect_idx = 0; sect_idx < pe_hdr.NumberOfSections; ++sect_idx) {
    uint32_t size = pe_sections_hdr[sect_idx].SizeOfRawData;
    strncpy(prg->sections_hdr[sect_idx].Name, (char*) pe_sections_hdr[sect_idx].Name, 8);
    prg->sections_hdr[sect_idx].Name[7] = '\0';
    prg->sections_hdr[sect_idx].Size = size;
    
    if(strncmp(prg->sections_hdr[sect_idx].Name, ".Alloc", 6) == 0) {
      printf("INFO from input_pe32_extract: found .Alloc* section, will map it at %08x instead of %08x\n", pe_sections_hdr[sect_idx].VirtualAddress, pe_sections_hdr[sect_idx].VirtualAddress + pe_image_base);
      prg->sections_hdr[sect_idx].VirtualAddress = pe_sections_hdr[sect_idx].VirtualAddress;
    }
    else {
      prg->sections_hdr[sect_idx].VirtualAddress = pe_image_base + pe_sections_hdr[sect_idx].VirtualAddress;
    }

    prg->sections[sect_idx] = MY_ZALLOC(size, uint8_t);
    if (prg->sections[sect_idx] == NULL) {
      //fprintf(stderr, "ERROR: One section at least is too big\n");
      MY_FREE(pe_sections_hdr);
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    /* copy all content of section into buffer of prg->sections[sect_idx] */
    if (fseek(fp, pe_sections_hdr[sect_idx].PointerToRawData, SEEK_SET) != 0) {
      //fprintf(stderr, "ERROR: One section at least is out of file\n");
      MY_FREE(pe_sections_hdr);
      program_dump_free(prg);
      return STATUS_INVALID_FILE;
    }

    read = fread(prg->sections[sect_idx], sizeof(uint8_t), size, fp);
    //if (read != size) {
    //  fprintf(stderr, "WARNING: One section is bigger than file, end is filled with zeros\n");
    //}
  }

  /* pe_sections_hdr is no longer needed */
  MY_FREE(pe_sections_hdr);
  program_dump_sort_sections(prg);

  /* search vftable offset from rdata section */
  /* find text and rdata section index */
  int k;
  for (k=0; k < pe_hdr.NumberOfSections; ++k) {
      if(strncmp(prg->sections_hdr[k].Name,".text",8)==0) {
        text_idx=k;
        text_found=1;
      }

      if(strncmp(prg->sections_hdr[k].Name,".rdata",8)==0) {
        rdata_idx=k;
        rdata_found=1;
      }

      if (rdata_found==1 && text_found==1) break;
  }

  /* Count how many offsets are compatible with a virtual function */
  if (examine_vftables && rdata_found) {
    uint32_t *ptr_addr;
    uint32_t* fct_cell;
  /* for each word in rdata section control if offset is pointing into text section (prg->sections_hdr[1]) */
  for(ptr_addr = (uint32_t *)prg->sections_hdr[rdata_idx].VirtualAddress; ptr_addr < (uint32_t *)(prg->sections_hdr[rdata_idx].VirtualAddress+prg->sections_hdr[rdata_idx].Size); ptr_addr++) {
    fct_cell = (uint32_t *) program_dump_goto_bounded(prg, (add_t)ptr_addr, sizeof(uint32_t));
      /*  pointing into text section ? */
    if (*fct_cell >= prg->sections_hdr[1].VirtualAddress && *fct_cell < prg->sections_hdr[1].VirtualAddress+prg->sections_hdr[1].Size) {
      /* address is valid ? */
    if (program_dump_goto(prg, (add_t)*fct_cell, NULL) == NULL) continue;
    /* count virtual functions found */
    virtualFcts_nb++;
      }
  }
  }


  /* adding every detected subfunction as an entrypoint */
  /* detecting subfunction : header=558bec */
    if ((examine_each_byte || examine_subfunctions) && text_found){
    size_t offset=0;
    uint32_t addr;
    size_t fin;
    if (examine_each_byte) fin=prg->sections_hdr[text_idx].Size;
    else fin=prg->sections_hdr[text_idx].Size-2;

    for (offset=0; offset<fin; offset++){
      if (examine_each_byte || (*(prg->sections[text_idx]+offset)==(uint8_t) 85 && *(prg->sections[text_idx]+offset+1)==(uint8_t) 139 && *(prg->sections[text_idx]+offset+2)==(uint8_t) 236)){
        subFcts_nb++;
        subfunctions_addr_new=(uint32_t*)realloc(subfunctions_addr, subFcts_nb*sizeof(uint32_t));
        if (subfunctions_addr_new!=NULL){
          subfunctions_addr=subfunctions_addr_new;
        }
        else{
          fprintf(stderr, "Realloc failed.");
          exit(1);
        }
        addr=(uint32_t) prg->sections_hdr[text_idx].VirtualAddress+offset;
        subfunctions_addr[subFcts_nb-1]=addr;
      }
    }
    }

  /* set main entry point only at least */
  prg->entrypoints_nb = 0;
  prg->entrypoints = MY_MALLOC(1, add_t);
  prg->entrypoints_names = MY_MALLOC(1, char *);
  prg->entrypoints[0] = pe_entrypoint;
  prg->entrypoints_names[0] = strdup("main");
  prg->entrypoints_nb++;

  /* read export directory */
  if (pe_exporttable == pe_image_base && (!rdata_found || !examine_vftables) && subFcts_nb==0)
    return STATUS_OK;

  pe_ied_ptr = program_dump_goto_bounded(prg, pe_exporttable, sizeof(IMAGE_EXPORT_DIRECTORY));

  if (examine_export && pe_ied_ptr) {
    uint32_t i;
    add_t* new_entrypoints;
    char** new_entrypoints_names;
    memcpy(&pe_ied, pe_ied_ptr, sizeof(IMAGE_EXPORT_DIRECTORY));
    fix_pe_ied_endian(&pe_ied);

    /* set at least entry point only, size of entrypoints table is less than number of export + 1 and number of virtual functions found */
    new_entrypoints = MY_REALLOC(prg->entrypoints, pe_ied.NumberOfFunctions+1+virtualFcts_nb*examine_vftables+subFcts_nb, add_t);
    new_entrypoints_names
        = MY_REALLOC(prg->entrypoints_names, (pe_ied.NumberOfFunctions+1)+virtualFcts_nb*examine_vftables+subFcts_nb, char *);
    if (!new_entrypoints || !new_entrypoints_names) {
      //fprintf(stderr, "WARNING: Entrypoints table seems broken\n");
      return STATUS_OK;
    }
    prg->entrypoints = new_entrypoints;
    prg->entrypoints_names = new_entrypoints_names;

    for (i = 0; i < pe_ied.NumberOfFunctions; ++i) {
      add_t entrypoint, ptr_addr;
      char* name = NULL;
      uint32_t* fct_cell;
      uint32_t j;

      /* indirect access */
      ptr_addr = pe_image_base + (add_t) pe_ied.AddressOfFunctions + i * sizeof(uint32_t);
      fct_cell = (uint32_t *) program_dump_goto_bounded(prg, ptr_addr, sizeof(uint32_t));
      if (!fct_cell)
        continue;
      entrypoint = pe_image_base + LE32_TO_HOST(*fct_cell);

      /* add entrypoint only if address is valid */
      if (program_dump_goto(prg, entrypoint, NULL) == NULL) {
        continue;
      }

      /* add the entry point */
      prg->entrypoints[prg->entrypoints_nb] = entrypoint;

      /* look for export names index */
      for (j = 0; j < pe_ied.NumberOfNames; ++j) {
        add_t ord = pe_image_base + pe_ied.AddressOfNameOrdinals + j * sizeof(WORD);
        WORD* index = (WORD*) (uintptr_t) program_dump_goto_bounded(prg, ord, sizeof(WORD));
        if (index != NULL && i == LE16_TO_HOST(*index))
          break;
      }
      if (j < pe_ied.NumberOfNames) {
        /* index found, look for name string */
        add_t _name_table = pe_image_base + pe_ied.AddressOfNames + j * sizeof(uint32_t);
        DWORD* name_table = (DWORD*) (uintptr_t) program_dump_goto_bounded_const(prg, _name_table,
            sizeof(DWORD));
        if (name_table != NULL) {
          add_t name_add = pe_image_base + LE32_TO_HOST(*name_table);

          name = (char*) program_dump_goto(prg, name_add, NULL);
        }
      }

      if (name != NULL) {
        /* Name found */
        prg->entrypoints_names[prg->entrypoints_nb] = strdup(name);
      } else {
        /* No name, use a default one */
        len = strlen(k_undefined) + 10;
        prg->entrypoints_names[prg->entrypoints_nb] = MY_MALLOC(len, char);
        sprintf(prg->entrypoints_names[prg->entrypoints_nb], "%s-%08x", k_undefined,
            prg->entrypoints_nb);
      }
      prg->entrypoints_nb++;
    }
  }

  if (examine_vftables && rdata_found) {
   uint32_t *ptr_addr;
         uint32_t* fct_cell;
         for(ptr_addr = (uint32_t *)prg->sections_hdr[rdata_idx].VirtualAddress; ptr_addr < (uint32_t *)(prg->sections_hdr[rdata_idx].VirtualAddress+prg->sections_hdr[rdata_idx].Size); ptr_addr++) {
           fct_cell = (uint32_t *) program_dump_goto_bounded(prg, (add_t)ptr_addr, sizeof(uint32_t));
           if (*fct_cell >= prg->sections_hdr[1].VirtualAddress && *fct_cell < prg->sections_hdr[1].VirtualAddress+prg->sections_hdr[1].Size) {
                    if (program_dump_goto(prg, (add_t)*fct_cell, NULL) == NULL)  continue;
                    /* add the entry point */
              prg->entrypoints[prg->entrypoints_nb] = *fct_cell;

                    /* No name, use a default one */
              len = strlen(k_undefined) + 10;
              prg->entrypoints_names[prg->entrypoints_nb] = MY_MALLOC(len, char);
              sprintf(prg->entrypoints_names[prg->entrypoints_nb], "%s-%08x", k_undefined,prg->entrypoints_nb);
              prg->entrypoints_nb++;
           }

         }
  }

  if (subFcts_nb != 0){
    int k;
    len = strlen("sub_") + sizeof(uint64_t) + 1; //sub_ + 64 bit int : 8 bytes + 1 for string end

    for (k=0; k<subFcts_nb; k++){
        prg->entrypoints[prg->entrypoints_nb] = subfunctions_addr[k];
        prg->entrypoints_names[prg->entrypoints_nb] = (char *)calloc(len, sizeof(char));
        sprintf(prg->entrypoints_names[prg->entrypoints_nb], "sub_%x", subfunctions_addr[k]);
        prg->entrypoints_nb++;
    }
  }

  return STATUS_OK;
}
