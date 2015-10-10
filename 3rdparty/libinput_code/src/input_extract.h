#ifndef JD_INPUT_EXTRACT_H
#define JD_INPUT_EXTRACT_H

/*!
 @file input_extract.h
 @brief Extract a file to a program_dump_t.
 */

#include <stdio.h>
#include "program_dump.h"
#include "return_status.h"

/*!
 @brief Allocate and fill a program_dump_t structure from an executable file.
 @param pprg The address where to store the pointer to the newly malloc'd program_dump_t filled.
 @param file_format Value from enum input_format_t defining the type of input.
 @param fp file pointer to the source ELF32, ELF64, PE32, PE32+, or raw file.
 @param examine_export Extract extra entrypoints from export section boolean.
 (int used as a boolean, for VS: no c99 -> no booleans).
 @return Error status.
 @see input_format_t
 */
status_t program_dump_extract(program_dump_t** pprg, uint32_t file_format, FILE* fp,
    int examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions);

#endif /* JD_INPUT_EXTRACT_H */
