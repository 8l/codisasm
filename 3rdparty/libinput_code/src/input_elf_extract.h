#ifndef JD_INPUT_ELF_EXTRACT_H
#define JD_INPUT_ELF_EXTRACT_H

/*!
 @file input_elf_extract.h
 @brief Extract an ELF file to a program_dump_t structure.
 */

#include <stdio.h>
#include "program_dump.h"
#include "return_status.h"

/*!
 @brief Allocate and fill a program_dump_t structure from an ELF32 or an ELF64
 file. Include all sections and headers.

 Here sections are different from linker sections (.text, .rodata, .data, .bss,
 etc.). Section are loadable segment, as a real loader would map the file  in
 memory. (e.g. mmap is shown with 'cat /proc/self/maps' on a linux machine).
 @param pprg The address where to store the pointer to the newly malloc'd program_dump_t filled.
 @param fp File pointer to the source ELF32 or ELF64 file
 @param examine_export Extract extra entrypoints from export section boolean.
 (int used as a boolean, for VS: no c99 -> no booleans).
 @return Error status.
 */
status_t input_elf_extract(program_dump_t** pprg, FILE* fp, uint32_t examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions);

#endif /* JD_INPUT_ELF_EXTRACT_H */
