#ifndef JD_PROGRAM_DUMP_H
#define JD_PROGRAM_DUMP_H

/*!
 @file program_dump.h
 @brief Library to represent memory content of programs.

 This structure is used to represent the memory content of a loaded binary.
 In order to save memory, a sparse layout is used. Different sections with
 corresponding buffers are allocated. For each section the virtual address
 (VMA), the size are stored together with a code buffer. In order to access
 buffer data corresponding to a VMA address (add_t) program_dump_goto functions
 must be used.
 Main entrypoint and export entrypoints are also saved for allowing
 disassembling.
 */

#include <stdlib.h>
#include <stdio.h>

#include "lhs_types.h"

/*!
 @brief Descriptor of a section (chunk of data).

 For each section a descriptor keep track of useful informations for finding
 the buffer and the offset where a given VMA address is stored.
 N.B.: section are loader sectionsnt) (or segment), not object file section
 (.data, .rodata, .bss, etc.), e.g. for ELF file it really differs.
 */
typedef struct program_section_desc_t {
  /*!
   @brief VMA address where the section start.

   The buffer will cover the area
   from VirtualAddress to VirtualAddress + Size.
   */
  add_t VirtualAddress;

  /*!
   @brief Size of the section
   */
  uint64_t Size;

  /*!
   @brief Name of the section (optional, has only been used for debugging).
   */
  char Name[8];
} program_section_desc_t;

/*!
 @brief Target architecture.

 For instance 16, 32 or 64bits of x86 are handled. This information is stored
 inside the binary and is needed by the disassembler.
 */
typedef enum program_arch_t {
  BIT16 = 16,
  BIT32 = 32,
  BIT64 = 64
} program_arch_t;

/*!
 @brief Structure representing the memory content of a program.

 The main structure, it is a sparse representation of the memory, with section
 buffers in sections[] and section descriptors (program_section_desc_t) in
 sections_hdr[]. Few extra informations that were stored in the binary are also
 kept (entrypoints, architecture, ...).
 */
typedef struct _program_dump_t {
  /*!
   @brief Current position pointer.

   Used by disassembler to allow a fseek-like mechanism.
   */
  add_t pos;

  /*!
   @brief Number of entry points.

   Size of entrypoints and entrypoints_names tables.
   */
  uint32_t entrypoints_nb;

  /*!
   @brief Entrypoints VMA addresses array.

   This table must have at least one element, the main entrypoint. By
   convention first is main, others might be extracted from exports.
   */
  add_t *entrypoints;

  /*!
   @brief Names of entrypoints.

   Usually first is filename, and other are function name extracted from
   exports. Name could stored in the database.
   */
  char ** entrypoints_names;

  /*!
   @brief Processor architecture.
   */
  program_arch_t arch;

  /*!
   @brief Number of sections.
   */
  uint16_t sections_nb;

  /*!
   @brief Descriptor of sections.
   */
  program_section_desc_t* sections_hdr;

  /*!
   @brief Buffers used to store the content (binary code) of the sections.
   */
  uint8_t** sections;

} program_dump_t;

/*!
 @brief Allocate a program_dump_t structure.
 */
program_dump_t *program_dump_alloc();

/*!
 @brief Free a program_dump_t structure.
 @param prg A pointer to the program_dump_t structure to free
 */
void program_dump_free(program_dump_t * prg);

/*!
 @brief Sort sections of a program_dump_t structure by VMA addresses.

 Was used in order to make it seek'able, but no longer used.
 @param prg A pointer to the program_dump_t structure to sort
 */
void program_dump_sort_sections(program_dump_t * prg);

/*!
 @brief Get a valid pointer corresponding to a given VMA address and keep track
 of buffer size.
 @param prg The program_dump_t structure.
 @param addr The VMA address to access.
 @param size_max If not NULL, store in the pointed size_t the maximum readable
 size in the founded section buffer. Used to prevent access outside of buffer.
 @return The pointer to the buffer of prg corresponding to the given VMA or
 NULL if address is not found.
 */
uint8_t* program_dump_goto(program_dump_t* prg, add_t addr, size_t* size_max);

/*!
 @brief Get a const valid pointer corresponding to a given VMA address and keep
 track of buffer size.
 @param prg The program_dump_t structure.
 @param addr The VMA address to access.
 @param size_max If not NULL, store in the pointed size_t the maximum readable
 size in the founded section buffer. Used to prevent access outside of buffer.
 @return The pointer to the buffer of prg corresponding to the given VMA or
 NULL if address is not found.
 */
const uint8_t* program_dump_goto_const(const program_dump_t* prg, add_t addr, size_t* size_max);

/*!
 @brief Get a valid pointer corresponding to a given VMA address and check
 buffer size.
 @param prg The program_dump_t structure.
 @param addr The virtual address to access.
 @param size Minimum readable size in the buffer.
 @return The pointer to the buffer of prg corresponding to the given VMA or
 NULL if address is not found or if the remaining bytes inside buffer are less
 than 'size'.
 */
static inline uint8_t* program_dump_goto_bounded(program_dump_t* prg, add_t addr, size_t size) {
  uint8_t *buffer;
  size_t size_max;

  buffer = program_dump_goto(prg, addr, &size_max);

  if (size_max >= size)
    return buffer;

  return NULL;
}

/*!
 @brief Get a valid const pointer corresponding to a given VMA address and
 check buffer size.
 @param prg The program_dump_t structure.
 @param addr The virtual address to access.
 @param size Minimum readable size in the buffer.
 @return The pointer to the buffer of prg corresponding to the given VMA or
 NULL if address is not found or if the remaining bytes inside buffer are less
 than 'size'.
 */
static inline const uint8_t* program_dump_goto_bounded_const(const program_dump_t* prg, add_t addr,
    size_t size) {
  const uint8_t *buffer;
  size_t size_max;

  buffer = program_dump_goto_const(prg, addr, &size_max);

  if (size_max >= size)
    return buffer;

  return NULL;
}

/*!
 @brief Print a pretty hexadecimal dump of code corresponding to file.
 @param prg The program_dump_t structure.
 @param addr The VMA address start address of code to print.
 @param length The code length to print. Due to hexadecimal print, output will
 be 3 times bigger.
 @param fp The destination file.
 @return Number of printed characters.
 */
size_t program_dump_fprint(const program_dump_t* prg, add_t addr, size_t length, FILE* fp);

/*!
 @brief Copy a code dump to a file.
 @param prg The program_dump_t structure.
 @param addr The VMA address start address of code to copy.
 @param length The code length to print.
 @param fp The destination file.
 @return Number of printed characters.
 */
size_t program_dump_raw_file(const program_dump_t* prg, add_t addr, size_t length, FILE* fp);

/*!
 @brief Copy a code dump to a buffer.
 @param prg The program_dump_t structure.
 @param addr The VMA address start address of code to copy.
 @param length The code length to print.
 @param buffer The destination buffer.
 @return Number of printed characters.
 */
size_t program_dump_raw_buffer(const program_dump_t* prg, add_t addr, size_t length,
    uint8_t* buffer);

#endif /* JD_PROGRAM_DUMP_H */
