#ifndef JD_INPUT_RAW_EXTRACT_H
#define JD_INPUT_RAW_EXTRACT_H

/*!
 @file input_raw_extract.h
 @brief Extract a raw dump of binary code
 */

#include <stdio.h>
#include "program_dump.h"
#include "return_status.h"

/*!
 @brief Allocate and fill a program_dump_t structure from a raw binary file.
 Only make one section with entry point set to 0.
 @param pprg The address where to store the pointer to the newly malloc'd program_dump_t filled.
 @param fp file pointer to the raw binary file.
 @return Error status.
 */
status_t input_raw_extract(program_dump_t** pprg, FILE* fp, uint32_t unused, char examine_vftables, char examine_each_byte, char examine_subfunctions);

#endif /* JD_RAW_EXTRACT_H */
