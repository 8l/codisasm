#ifndef JD_INPUT_PE32_EXTRACT_H
#define JD_INPUT_PE32_EXTRACT_H

/*!
 @file input_pe32_extract.h
 @brief Extract a PE32 or PE32+ file.
 */

#include <stdio.h>
#include "program_dump.h"
#include "return_status.h"

/*!
 @brief Allocate and fill a program_dump_t structure from a pe32 or PE32+ file.
 Include all sections and headers.
 @param pprg The address where to store the pointer to the newly malloc'd program_dump_t filled.
 @param fp file pointer to the source PE32 or PE32+ file
 @param examine_export Extract extra entrypoints from export section boolean.
 (int used as a boolean, for VS: no c99 -> no booleans).
 @return Error status.
 */
status_t input_pe32_extract(program_dump_t** pprg, FILE* fp, uint32_t examine_export, char examine_vftables, char examine_each_byte, char examine_subfunctions);

#endif /* JD_INPUT_PE32_EXTRACT_H */
