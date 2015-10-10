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

/*!
 * Functions to parse the trace file old version (with all possible informations)
 * 
 * \file include/Trace.h 
 * \file src/Trace.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */

#ifndef TRACEINPUTHANDLER_H
#define	TRACEINPUTHANDLER_H

#include "utils.h"
#include "Instruction.h"
#include "Graph.h"

#include "liblhs/lhs_types.h"
extern "C" {
#include "libinput_code/src/program_dump.h"
}

#include <string>
#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include <utility>
#include <stack>
#include <vector>

extern struct run_config_t run_config;

typedef struct trace_s {
    std::ifstream file;
    int wave = 0;
    uint wave_size = 0;
} trace_t;

/*!
 * Initialize the trace
 */
void cod_trace_init(trace_t* trace);
/*!
 * Extract a partial CFG from the trace
 */
void cod_trace_buildCFG(trace_t* trace, Cfg *cfg);   
/*!
 * Close the trace file a free memory
 */
void cod_trace_free(trace_t* trace);

/*!
 * Go to next instruction in the trace and extract it
 */
bool cod_trace_get_instr(trace_t *trace, Cfg *cfg, instruction_t* previous, instruction_t **instr);

#endif	/* TRACEINPUTHANDLER_H */

