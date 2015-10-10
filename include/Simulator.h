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
 * Recursive traversal disassembler
 * 
 * \file include/Simulator.h 
 * \file src/Simulator.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */
#ifndef SIMULATOR_H
#define	SIMULATOR_H

#include "Decoder_xed.h"
#include "utils.h"
#include "Trace.h"
#include "Graph.h"

#include "liblhs/lhs_types.h"

extern "C" {
#include "libinput_code/src/program_dump.h"
#include "libinput_code/src/input_extract.h"
#include "liblhs/lhs_types.h"
#include "liblhs/return_status.h"
#include "xed-common-defs.h"
}

#include <string>
#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include <unordered_map>
#include <stack>
#include <cassert>
#include <stack>
#include <utility>

extern struct run_config_t run_config;

typedef struct simulator_s {
    program_dump_t* prg = NULL;
    short wave;
} simulator_t;

typedef std::stack<std::pair<add_t, instruction_t*> > explore_t;

/*!
 * Initialize the disassembler
 */
void cod_sim_init(simulator_t *sim);
/*!
 * Free memory allocated by the initialization
 */
void cod_sim_free(simulator_t *sim);

/*!
 * Build the CFG
 * First one by starting from the entry point of the binary file
 * Second one by starting from the root node extracted from the trace
 */
void cod_sim_buildCFG(simulator_t *sim, decoder_t *decoder, Cfg *cfg);
void cod_sim_buildCFG_fromTrace(simulator_t *sim, decoder_t *decoder, Cfg *cfg);

/*!
 * Explore the undisclosed branch of the CFG
 */
void cod_sim_explore(simulator_t *sim, decoder_t *decoder, Cfg *cfg, explore_t &branch);

/*!
 * Disassemble an instruction and add it to the CFG
 */
instruction_t* cod_sim_disas(simulator_t *sim, decoder_t *decoder, Cfg *cfg, add_t target, instruction_t *source, explore_t &branch);

/*!
 * Depending of the category of the disassemble instruction, add an undisclosed branch to explore (call, jump, jcc)
 */
bool cod_sim_explore_next(Cfg* cfg, inst_cat_e last_inst_t, instruction_t* last, add_t sec_target, explore_t &branch);

/*!
 * Print some informations about the sections of the executable
 */
void cod_sim_info(simulator_t *sim);

#endif	/* SIMULATOR_H */

