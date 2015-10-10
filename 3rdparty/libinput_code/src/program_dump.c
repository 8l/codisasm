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

#include "program_dump.h"

program_dump_t *program_dump_alloc() {
  program_dump_t * prg = MY_ZALLOC(1, program_dump_t);

  /* Use of bzero
   prg->error_status = 0;
   prg->entrypoints_nb = 0;
   prg->entrypoints = NULL;
   prg->entrypoints_names = NULL;
   prg->sections_nb = 0;
   prg->sections_hdr = NULL;
   prg->sections = NULL;
   */
  return prg;
}

void program_dump_free(program_dump_t * prg) {
  uint32_t i;
  for (i = 0; i < prg->sections_nb; ++i) {
    MY_FREE(prg->sections[i]);
  }

  for (i = 0; i < prg->entrypoints_nb; ++i) {
    MY_FREE(prg->entrypoints_names[i]);
  }

  MY_FREE(prg->sections);
  MY_FREE(prg->entrypoints_names);
  MY_FREE(prg->sections_hdr);
  MY_FREE(prg->entrypoints);
  MY_FREE(prg);
}

static int cmp_sections_addr(const program_dump_t * prg, uint16_t idx1, uint16_t idx2) {
  if (prg->sections_hdr[idx1].VirtualAddress < prg->sections_hdr[idx2].VirtualAddress)
    return -1;
  if (prg->sections_hdr[idx1].VirtualAddress > prg->sections_hdr[idx2].VirtualAddress)
    return 1;
  return 0;
}

static void swap_sections(program_dump_t * prg, uint16_t idx1, uint16_t idx2) {
  program_section_desc_t *h1, *h2, ht;
  uint8_t **s1, **s2, *st;

  h1 = &prg->sections_hdr[idx1];
  h2 = &prg->sections_hdr[idx2];
  ht = *h1;
  *h1 = *h2;
  *h2 = ht;

  s1 = &prg->sections[idx1];
  s2 = &prg->sections[idx2];
  st = *s1;
  *s1 = *s2;
  *s2 = st;
}

void program_dump_sort_sections(program_dump_t * prg) {
  int i, c, r, n;
  n = prg->sections_nb;

  /* heapify */
  for (i = (n / 2); i >= 0; i--) {
    for (r = i; r * 2 < n; r = c) {
      c = r * 2;
      if (c < n - 1 && cmp_sections_addr(prg, c, c + 1) < 0)
        c++;
      if (cmp_sections_addr(prg, r, c) >= 0)
        break;
      swap_sections(prg, r, c);
    }
  }

  /* sort */
  for (i = n - 1; i >= 0; i--) {
    swap_sections(prg, 0, i);
    for (r = 0; r * 2 < i; r = c) {
      c = r * 2;
      if (c < i - 1 && cmp_sections_addr(prg, c, c + 1) < 0)
        c++;
      if (cmp_sections_addr(prg, r, c) >= 0)
        break;
      swap_sections(prg, r, c);
    }
  }
}

uint8_t* program_dump_goto(program_dump_t* prg, add_t addr, size_t* size_max) {
  uint16_t sect_idx;

  /* search containing section */
  for (sect_idx = 0; sect_idx < prg->sections_nb; ++sect_idx) {
    if (addr >= prg->sections_hdr[sect_idx].VirtualAddress && addr
        < prg->sections_hdr[sect_idx].VirtualAddress + prg->sections_hdr[sect_idx].Size)
      break;
  }

  /* if found */
  if (sect_idx < prg->sections_nb) {
    size_t offset;

    offset = addr - prg->sections_hdr[sect_idx].VirtualAddress;
    /* Fill buffer end address */
    if (size_max) {
      *size_max = prg->sections_hdr[sect_idx].Size - offset;
    }

    /* return a pointer inside the buffer */
    return prg->sections[sect_idx] + offset;
  }

  /* Invalid address */
  if (size_max)
    *size_max = 0;

  return NULL;
}

const uint8_t* program_dump_goto_const(const program_dump_t* prg, add_t addr, size_t* size_max) {
  uint16_t sect_idx;

  /* search containing section */
  for (sect_idx = 0; sect_idx < prg->sections_nb; ++sect_idx) {
    if (addr >= prg->sections_hdr[sect_idx].VirtualAddress && addr
        < prg->sections_hdr[sect_idx].VirtualAddress + prg->sections_hdr[sect_idx].Size)
      break;
  }

  /* if found */
  if (sect_idx < prg->sections_nb) {
    size_t offset;

    offset = addr - prg->sections_hdr[sect_idx].VirtualAddress;
    /* Fill buffer end address */
    if (size_max) {
      *size_max = prg->sections_hdr[sect_idx].Size - offset;
    }

    /* return a pointer inside the buffer */
    return prg->sections[sect_idx] + offset;
  }

  /* Invalid address */
  if (size_max)
    *size_max = 0;

  return NULL;
}

size_t program_dump_raw_file(const program_dump_t* prg, add_t addr, size_t length, FILE* fp) {
  size_t ret;

  ret = 0;
  while (length > 0) {
    const uint8_t val = *program_dump_goto_const(prg, addr, NULL);
    putc(val, fp);
    ret++;
    addr++;
    length--;
  }

  return ret;
}

size_t program_dump_raw_buffer(const program_dump_t* prg, add_t addr, size_t length,
    uint8_t* buffer) {
  const uint8_t* src;

  src = program_dump_goto_bounded_const(prg, addr, length);
  if (!src)
    return 0;

  memcpy(buffer, src, length);

  return length;
}

size_t program_dump_fprint(const program_dump_t* prg, add_t addr, size_t length, FILE* fp) {
  size_t ret;

  ret = 0;
  while (length > 0) {
    const uint8_t val = *program_dump_goto_const(prg, addr, NULL);
    ret += fprintf(fp, " %02x", val);
    addr++;
    length--;
  }

  return ret;
}
