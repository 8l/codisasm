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

#include <set>
#include <map>
#include <stack>

#include "Simulator.h"

using namespace std;

void cod_sim_init(simulator_t *sim) {
    
    FILE *fh = fopen(run_config.input_file.c_str(), "rb");
    assert(fh);
    
    sim->prg = program_dump_alloc();
    assert(sim->prg != NULL) ;
    assert(program_dump_extract(&(sim->prg), AUTO_FORMAT, fh, 1, 0, 0, 0) == STATUS_OK);
#ifdef DEBUG
    if(run_config.debug)
        cod_sim_info(sim);
#endif
    sim->wave = run_config.wave;
    
    fclose(fh);
}

void cod_sim_free(simulator_t *sim) {
    program_dump_free(sim->prg);
} 

void cod_sim_info(simulator_t *sim) {
    assert(sim->prg != NULL) ;
    
    cout << "Arch: " << sim->prg->arch << endl;
    cout << "Position in file : " << sim->prg->pos << endl;
    cout << "Nb Entry point: " << sim->prg->entrypoints_nb << endl;
    for(uint i=0; i < sim->prg->entrypoints_nb ; i++) {
        cout << "\tName: \"" << sim->prg->entrypoints_names[i] << "\" -- ";
        cout << "\tAddr: " << h2s(sim->prg->entrypoints[i]) << endl;
    }
    cout << "Nb Sections: " << sim->prg->sections_nb << endl;
    for(uint i=0; i < sim->prg->sections_nb ; i++) {
        cout << "\tName: \"" << sim->prg->sections_hdr[i].Name << "\" -- ";
        cout << "\tSize: " << sim->prg->sections_hdr[i].Size << " -- ";
        cout << "\tVAddr: " << h2s(sim->prg->sections_hdr[i].VirtualAddress);
        cout << endl;
    }
}

void cod_sim_buildCFG_fromTrace(simulator_t *sim, decoder_t *decoder, Cfg *cfg) {
    assert(sim->prg != NULL);
    assert(decoder != NULL);
    assert(cfg != NULL);
    explore_t branch;
    add_t new_target = 0;
    
    for(pair<Address_Wave, instruction_t*> el : cfg->map_inst) {
        instruction_t *inst = el.second;
        inst_cat_e inst_type = cod_dec_decode(decoder, sim->prg, inst, &new_target);
#ifdef DEBUG
        if(run_config.debug) 
            cout << "Sim Trace " << inst->wave << " - " << h2s(inst->addr) << "(" << inst->size << "): " << inst->text  << " --- target: " << h2s(new_target) << endl;
#endif

        if(cod_sim_explore_next(cfg, inst_type, inst, new_target, branch)
           && !cod_cfg_edge_exists(cfg, inst, {inst->addr+inst->size, inst->wave})) {
            branch.push({inst->addr+inst->size, inst});
#ifdef DEBUG
            if(run_config.debug)
                cout << "\tAdding simulation of seq flow" << endl;
#endif
        }
    }
    
    cod_sim_explore(sim, decoder, cfg, branch);
}

void cod_sim_buildCFG(simulator_t *sim, decoder_t *decoder, Cfg *cfg) {
    assert(sim->prg != NULL);
    assert(decoder != NULL);
    assert(cfg != NULL);
    explore_t branch;
    
    // if the entry point has been given on command line
    add_t entrypoint = (run_config.start_addr)
                        ? run_config.start_addr
                        : sim->prg->entrypoints[0];
    
    instruction_t *root_inst = cod_sim_disas(sim, decoder, cfg, entrypoint, NULL, branch);
    if(root_inst != NULL)
        branch.push({root_inst->addr+root_inst->size, root_inst});
    
    cod_sim_explore(sim, decoder, cfg, branch);
}

void cod_sim_explore(simulator_t *sim, decoder_t *decoder, Cfg *cfg, explore_t &branch) {
    pair<add_t, instruction_t*> top;
    instruction_t *source, *inst;
    
    while(!branch.empty()) {
        top = branch.top();
        branch.pop();
        source = top.second;
        inst = cod_sim_disas(sim, decoder, cfg, top.first, source, branch);
        while(inst != NULL) { //linear sweep
            source = inst;
            inst = cod_sim_disas(sim, decoder, cfg, source->addr+source->size, source, branch);
        }
    }
}

instruction_t* cod_sim_disas(simulator_t *sim, decoder_t *decoder, Cfg *cfg, add_t target, instruction_t *source, explore_t &branch) {
    // check if already known instruction
    map<Address_Wave, instruction_t*>::iterator dup;
    if((dup = cfg->map_inst.find({target, sim->wave})) != cfg->map_inst.end()) {
        if(!cod_cfg_edge_exists(cfg, source, {dup->second->addr, dup->second->wave}))
            cod_cfg_add_edge(cfg, source, dup->second);
#ifdef DEBUG
        if(run_config.debug)
            cout << "Found dupplicate " << h2s(target) << endl;
#endif
        return NULL;
    }

    size_t size_max;
    uint8_t *target_ptr = program_dump_goto(sim->prg, target, &size_max);
    if(target_ptr == NULL)
        return NULL;
    
    instruction_t *inst = cod_inst_create();
    add_t new_target;
    inst_cat_e inst_type = cod_dec_decode(decoder, sim->prg, target_ptr, 
                                    MIN(XED_MAX_INSTRUCTION_BYTES, size_max), 
                                    target, inst, &new_target);
    if(!inst->size) {
        cod_inst_free(inst);
        return NULL;
    }
    inst->wave = sim->wave;
#ifdef DEBUG
    if(run_config.debug) 
        cout << "Sim " << inst->wave << " - " << h2s(inst->addr) << "(" << inst->size << "): " << inst->text  << " --- target: " << h2s(new_target) << endl;
#endif
    if(source == NULL)
        cod_cfg_set_root(cfg, inst);
    else 
        cod_cfg_add_node(cfg, source, inst);

    if(cod_sim_explore_next(cfg, inst_type, inst, new_target, branch))
        return inst;
    
    return NULL;
}

bool cod_sim_explore_next(Cfg* cfg, inst_cat_e last_inst_t, instruction_t* last, add_t sec_target, explore_t &branch) {
    switch(last_inst_t) {
        case COD_INST_CAT_JMP:
            if(!cod_cfg_edge_exists(cfg, last, {sec_target, last->wave})) {
                branch.push({sec_target, last});
#ifdef DEBUG
                if(run_config.debug)
                    cout << "\tAdding exploration of target " << h2s(sec_target) << endl;
#endif
            }
            return false;
            
        case COD_INST_CAT_JCC:
        case COD_INST_CAT_CALL:
            if(!cod_cfg_edge_exists(cfg, last, {sec_target, last->wave})) {
                branch.push({sec_target, last});
#ifdef DEBUG
                if(run_config.debug)
                    cout << "\tAdding exploration of target " << h2s(sec_target) << endl;
#endif
            }
            
        case COD_INST_CAT_SEQ:
            return true;
            
        case COD_INST_CAT_RET:
        case COD_INST_CAT_INT:
        case COD_INST_CAT_HLT:
        case COD_INST_CAT_INVALID:
            return false;
    }
}
