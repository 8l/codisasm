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

#include "Decoder_xed.h"

using namespace std;

void cod_dec_init(decoder_t *decoder) {
    xed_tables_init();
    xed_state_zero(decoder);
    
    decoder->stack_addr_width = XED_ADDRESS_WIDTH_32b;
    decoder->mmode = XED_MACHINE_MODE_LEGACY_32;
}

inst_cat_e cod_dec_decode(decoder_t *decoder, program_dump_t *prg, instruction_t* inst, add_t* target) {
    xed_decoded_inst_t *xedd = static_cast<xed_decoded_inst_t*>(calloc(1, sizeof(xed_decoded_inst_t)));
    xed_chip_enum_t chip = XED_CHIP_INVALID;
    
    xed_decoded_inst_zero_set_mode(xedd, decoder);
    xed_decoded_inst_set_input_chip(xedd, chip);
    
    xed_error_enum_t xed_error = xed_decode(xedd,
        XED_REINTERPRET_CAST(const xed_uint8_t*, inst->bytes),
        inst->size
    );
    if(xed_error != XED_ERROR_NONE)
        return COD_INST_CAT_INVALID;
    
    char* buf = static_cast<char*>(calloc(64,sizeof(char)));
    assert(buf != NULL);
    assert(xed_format_intel(xedd, buf, 64, 0));
    inst->text = buf;
    
    
    inst_cat_e res = cod_dec_has_target_addr(xedd, prg, inst->addr+inst->size, target);
    free(xedd);
    return res;
}

inst_cat_e cod_dec_decode(decoder_t *decoder, program_dump_t *prg, uint8_t* bytes, size_t size, add_t addr, instruction_t *inst, add_t* target) {
    xed_decoded_inst_t *xedd = static_cast<xed_decoded_inst_t*>(calloc(1, sizeof(xed_decoded_inst_t)));
    xed_chip_enum_t chip = XED_CHIP_INVALID;
    
    xed_decoded_inst_zero_set_mode(xedd, decoder);
    xed_decoded_inst_set_input_chip(xedd, chip);
    
    if(xed_decode(xedd,
        XED_REINTERPRET_CAST(const xed_uint8_t*, bytes),
        size
    ) != XED_ERROR_NONE)
        return COD_INST_CAT_INVALID;
    
    char* buf = static_cast<char*>(calloc(64, sizeof(char)));
    assert(buf != NULL);
    assert(xed_format_intel(xedd, buf, 64, 0));
    
    inst->addr = addr;
    if(inst->text != NULL) free(inst->text);
    inst->text = buf;
    inst->size = xed_decoded_inst_get_length(xedd);
    
    inst->bytes = static_cast<uint8_t*>(malloc(inst->size * sizeof(uint8_t)));
    assert(inst->bytes != NULL);
    memcpy(inst->bytes, bytes, inst->size* sizeof(uint8_t));
    
    inst_cat_e res = cod_dec_has_target_addr(xedd, prg, addr+inst->size, target);
    free(xedd);
    return res;
}

inst_cat_e cod_dec_has_target_addr(xed_decoded_inst_t *xedd, program_dump_t *prg, add_t cur_pc, add_t *target) {
    inst_cat_e type;
    switch (xed_decoded_inst_get_category(xedd)) {
        case XED_CATEGORY_INVALID:
            return COD_INST_CAT_INVALID;
            
        case XED_CATEGORY_UNCOND_BR:
            type = COD_INST_CAT_JMP;
            break;
            
        case XED_CATEGORY_COND_BR:
            type = COD_INST_CAT_JCC;
            break;

        case XED_CATEGORY_SYSCALL:
        case XED_CATEGORY_CALL:
            type = COD_INST_CAT_CALL;
            break;
        
        case XED_CATEGORY_INTERRUPT:
            return COD_INST_CAT_INT;
            
        case XED_CATEGORY_RET:
        case XED_CATEGORY_SYSRET:
            return COD_INST_CAT_RET;
            
        case XED_CATEGORY_SYSTEM:
            return COD_INST_CAT_HLT;
            
        default:
            return COD_INST_CAT_SEQ;
    }
    
    const xed_inst_t* xi = xed_decoded_inst_inst(xedd);
    int nb_operand = xed_inst_noperands(xi);
    for(int i=0 ; i < nb_operand ; i++) {
        const xed_operand_t* op = xed_inst_operand(xi, i);
        //-- used to mark deprecated operand
        if(xed_operand_operand_visibility(op) != XED_OPVIS_SUPPRESSED) {
            *target = cod_dec_get_target_addr(xedd, prg, op, cur_pc);
            return type;
        }
    }
#ifdef DEBUG    
    char *buf = static_cast<char*>(malloc(255*sizeof(char)));
    xed_decoded_inst_dump_intel_format(xedd, buf, 255, 0);
    cout << " ------------> " << buf << " -- " << xed_category_enum_t2str(xed_decoded_inst_get_category(xedd)) << endl;
    free(buf);
#endif
    assert(false);
}

add_t cod_dec_get_target_addr(xed_decoded_inst_t *xedd, program_dump_t *prg, const xed_operand_t* op, add_t cur_addr) {
    size_t sm;
    uint8_t* tmp;
    switch(xed_operand_name(op)) {
        case XED_OPERAND_IMM0SIGNED:
            return xed_decoded_inst_get_signed_immediate(xedd);
        case XED_OPERAND_IMM0:
            return xed_decoded_inst_get_unsigned_immediate(xedd);
                        
        case XED_OPERAND_MEM0:
            tmp = program_dump_goto(prg, xed_decoded_inst_get_memory_displacement(xedd, 0), &sm);
            return tmp == NULL ? 0 : *(reinterpret_cast<uint32_t*>(tmp));
        
        case XED_OPERAND_MEM1:
            tmp = program_dump_goto(prg, xed_decoded_inst_get_memory_displacement(xedd, 1), &sm);
            return tmp == NULL ? 0 : *(reinterpret_cast<uint32_t*>(tmp));
            
        case XED_OPERAND_PTR:
        case XED_OPERAND_RELBR:
            return cur_addr + xed_decoded_inst_get_branch_displacement(xedd);
            
        default:
            return 0;
    }
}
