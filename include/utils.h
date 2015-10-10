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
 * Utilities
 * 
 * \file include/utils.h 
 * \file src/utils.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */

#ifndef UTILS_H
#define UTILS_H

#include "liblhs/lhs_types.h"

#include <iostream>
#include <string>
#include <cstdio>
#include <tuple>
#include <set>
#include <cmath>
#include <unordered_map>

#define MIN(a,b) ((a < b) ? a : b)

struct run_config_t {
    // Input file path
    std::string input_file = "";
    // XDot output file
    std::string xdot_file = "";
    // Trace file
    std::string trace_file = "";
    // CFG trace file 
    std::string cfg_file = "";
    // output file containing the assembly
    std::string listing_file = "";
    
    // Main address to start the process
    add_t start_addr = 0;
#ifdef DEBUG
    // Activate debug mode - display a lot of useful info during process
    bool debug = false; 
    // Activate debug mode for trace only - display a lot of useful info while parsing the trace
    bool debug_trace = false; 
#endif
    //Step-By-Step stop between fetch and decode for each instruction
    bool step_by_step = false;
    // Disassemble until the end of this wave
    short wave = -1;
    // collapse basic block
    bool collapse = false;
};

std::string b2s(bool b);
#define H2S_SIZE (64/4)+1
std::string h2s(add_t a, std::string prefix="0x");
std::string i2s(int a);

std::string bin2ascii(char*, size_t s);
std::string bin2ascii(uint8_t* c, size_t s);

uint64_t bin2uint64(char*);
int64_t bin2int64(char* c);
uint32_t bin2uint32(char*);
int32_t bin2int32(char*);
int16_t bin2int16(char* c);

int64_t swap_endiant64( int64_t val );
uint64_t swap_endiant64( uint64_t val );

int16_t swap_endiant16( int16_t val );
uint16_t swap_endiant16( uint16_t val );

int32_t swap_endiant32( int32_t val );
uint32_t swap_endiant32( uint32_t val );

#endif
