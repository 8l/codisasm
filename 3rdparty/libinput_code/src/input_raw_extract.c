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

#include "input_raw_extract.h"
#include <string.h>

status_t input_raw_extract(program_dump_t** pprg, FILE* fp, uint32_t unused, char examine_vftables, char examine_each_byte, char examine_subfunctions) {
  program_dump_t* prg;
  size_t size;

  if (fseek(fp, 0L, SEEK_END) != 0) {
    //fprintf(stderr, "ERROR: Impossible to read raw file\n");
    return STATUS_INVALID_FILE;
  }

  size = ftell(fp);

  if (fseek(fp, 0L, SEEK_SET) != 0 || size == 0) {
    //fprintf(stderr, "ERROR: Impossible to read raw file\n");
    return STATUS_INVALID_FILE;
  }

  prg = program_dump_alloc();
  *pprg = prg;

  prg->arch = BIT32;

  prg->entrypoints_nb = 1;
  prg->entrypoints = MY_MALLOC(1, add_t);
  prg->entrypoints[0] = 0;

  prg->entrypoints_names = MY_MALLOC(1, char *);
  prg->entrypoints_names[0] = strdup("main_raw");

  prg->sections_nb = 1;
  prg->sections_hdr = MY_MALLOC(1, program_section_desc_t);
  prg->sections_hdr[0].VirtualAddress = 0;
  prg->sections_hdr[0].Size = size;
  prg->sections_hdr[0].Name[0] = 'R';
  prg->sections_hdr[0].Name[1] = 'A';
  prg->sections_hdr[0].Name[2] = 'W';
  prg->sections_hdr[0].Name[3] = '\0';

  /* build the memory image */
  prg->sections = MY_MALLOC(1, uint8_t*);
  prg->sections[0] = MY_ZALLOC(size, uint8_t);
  if (prg->sections[0] == NULL) {
    //fprintf(stderr, "ERROR: The raw file is too big\n");
    program_dump_free(prg);
    return STATUS_INVALID_FILE;
  }

  return STATUS_OK;
}
