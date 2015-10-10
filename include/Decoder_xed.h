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
 * Implement the specities to decode X86 binary instruction and address related.
 * using the xed library from Intel
 * \see https://software.intel.com/sites/landingpage/pintool/docs/71313/Xed/html/
 * 
 * \file include/Decoder_xed.h 
 * \file src/Decoder_xed.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */

#ifndef DECODERPROXY_H
#define	DECODERPROXY_H

#include "Instruction.h"
#include "utils.h"

#include "liblhs/lhs_types.h"
extern "C" {
#include "libinput_code/src/program_dump.h"
// X86 
#include "xed-interface.h"
}

#include <string>
#include <iostream>
#include <map>
#include <unordered_map>
#include <cassert>

extern struct run_config_t run_config;

/*!
 * Category of instructions in codisasm
 */
typedef enum {
    COD_INST_CAT_INVALID,
    COD_INST_CAT_SEQ,
    COD_INST_CAT_JMP,
    COD_INST_CAT_JCC,
    COD_INST_CAT_CALL,
    COD_INST_CAT_RET,
    COD_INST_CAT_INT,
    COD_INST_CAT_HLT
} inst_cat_e;

typedef xed_state_s decoder_t;

/*!
 * Initialize the decoder objet
 */
void cod_dec_init(decoder_t *decoder);

/*!
 * Decode an instruction.
 * First one takes the bytes in the provided instruction and populate it, useful from a trace
 * Second one allocates a new instruction
 * 
 * \param decoder_t *decoder -- the decoder to use
 * \param program_dump_t *prg -- use to get target address when direct addressing instruction
 * \param instruction_t* inst -- decoded instruction
 * \param add_t* target -- when dealing with jump or call, used to place the target address
 * 
 * \param uint8_t *bytes_start_addr -- pointer to opcode
 * \param size_t size -- size maximum of the opcode
 * \param add_t addr -- address in the executable file, used to compute relative jump
 * 
 * \return inst_cat_e -- the categorie of the instruction
 */
inst_cat_e cod_dec_decode(decoder_t *decoder, program_dump_t *prg, instruction_t* inst, add_t* target);
inst_cat_e cod_dec_decode(decoder_t *decoder, program_dump_t *prg, uint8_t *bytes_start_addr, size_t size, add_t addr, instruction_t* inst, add_t* target);

/*!
 * Determine the category of the instruction and if there is a target branch (call, jmp, jcc)
 * 
 * \param xed_decoded_inst_t *xedd
 * \param program_dump_t *prg
 * \param add_t cur_pc 
 * \param add_t *target
 * 
 * \return inst_cat_e -- the categorie of the instruction
 */
inst_cat_e cod_dec_has_target_addr(xed_decoded_inst_t *xedd, program_dump_t *prg, add_t cur_pc, add_t *target);

/*!
 * Compute the target address from the operad of the xed instruction
 * 
 * \param xed_decoded_inst_s *xedd
 * \param program_dump_t *prg
 * \param const xed_operand_s* op
 * \param add_t cur_addr
 * 
 * \return add_t
 */
add_t cod_dec_get_target_addr(xed_decoded_inst_s *xedd, program_dump_t *prg, const xed_operand_s* op, add_t cur_addr);

#endif	/* DECODERPROXY_H */

