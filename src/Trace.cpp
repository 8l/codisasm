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

#include "Trace.h"
using namespace std;

void cod_trace_init(trace_t* trace) {
    trace->file.open(run_config.trace_file, ios::binary);
    assert(trace->file.is_open());
    
    trace->wave = 0;
    if(run_config.wave == 0)
        return;
    
    // seek the beginning of the wave
    while(trace->file.good()) {
        int param = trace->file.get();
        char action = trace->file.get();
        switch(action) {
            case 'L': {
                char tmp[4];
                trace->file.read(tmp, 4);
                trace->wave = bin2int32(tmp);
                // handling wave
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "Seek Starting wave : " << trace->wave << endl;
#endif
                if(trace->wave == run_config.wave) {
#ifdef DEBUG
                    if(run_config.debug_trace)
                        cout << "\tWe reached the beginning of the wave" << endl;
#endif
                    return;
                }
                break;
            }
            case 'K': 
                trace->file.seekg(12, ios::cur);
                break;
            case 'S':
            case 'M':
            case 'R':
            case 'W':
                trace->file.seekg(4, ios::cur);
            case 'D':
                trace->file.seekg(param, ios::cur);
                break;
            case 'r': 
            case 'w':
            case 'X':
            case 'T':
                trace->file.seekg(4, ios::cur);
                break;
            default:
                cout << " ---> " << param << " -- " << bin2ascii(&action,1) << endl;
                assert(false);
        }
    }
    assert(trace->file.good()); //false if th given wave doesn't exist
}

void cod_trace_free(trace_t* trace) {
    trace->file.close();
}

void cod_trace_buildCFG(trace_t* trace, Cfg *cfg) {
    assert(trace->file.is_open());
    
    instruction_t* last_instr;
    if(!cod_trace_get_instr(trace, cfg, NULL, &last_instr)) {
        cout << "Erreur no root instruction" << endl;
        return;
    }
    cod_cfg_set_root(cfg, last_instr);
    
    instruction_t* instr;
    while(trace->file.good() && cod_trace_get_instr(trace, cfg, last_instr, &instr)) {
#ifdef DEBUG
                if(run_config.debug_trace) 
                    cout << "Trace " << instr->wave << " - " << h2s(instr->addr) << "(" << instr->size << ") " << endl;
#endif
        last_instr = instr;
    }
}

bool cod_trace_get_instr(trace_t *trace, Cfg *cfg, instruction_t* previous, instruction_t **instr) {
    while(trace->file.good()) {
        int param = trace->file.get();
        char action = (char)trace->file.get();
#ifdef DEBUG
        if(run_config.debug_trace)
            cout << "---> " << param << " -- " << action << endl;
#endif
        switch(action) {
            case 'L':
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tNot interesting wave, stopping" << endl;
#endif    
                // in case we are in multiple mode, we will start the new wave later
                trace->file.seekg(4, ios::cur);
                
                trace->file.clear(ios::eofbit); // to make ifs.good() returning false as we finished getting traces we wanted
                // don't do anything else on the ifs as it could unset the eofbit, et place goodbit to 1 resulting in a wrong behavior
                return false;
                
            case 'K': // Exception
                trace->file.seekg(12, ios::cur);
                break;
                    
            case 'S':
            case 'M':// 'M' followed by a dynamic included file
            case 'R':
            case 'W':
                trace->file.seekg(4, ios::cur);
            case 'D':
                trace->file.seekg(param, ios::cur);
                break;
            case 'r': 
            case 'w':
            
            case 'T':// handling thread id
                trace->file.seekg(4, ios::cur);
                break;
            
            case 'X': {
                char saddr[4];
                trace->file.read(saddr, 4);
                add_t addr = bin2uint32(saddr);
                size_t size = trace->file.get();
                
                Address_Wave test = {addr, trace->wave};
                map < Address_Wave, instruction_t*>::iterator dup;
                if((dup = cfg->map_inst.find(test)) != cfg->map_inst.end()) {
                    cod_cfg_add_edge(cfg, previous, dup->second);
                    *instr = dup->second;
                    trace->file.seekg(1+size, ios::cur);
                    return true;
                }
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tAddr " << bin2ascii(saddr, 4) << " -- " << h2s(addr) << endl;
#endif
                
                *instr = cod_inst_create();
                (*instr)->addr = addr;
                (*instr)->size = size;

                (*instr)->bytes = static_cast<uint8_t*>(malloc(static_cast<uint>((*instr)->size)*sizeof(uint8_t)));
                assert((*instr)->bytes != NULL);
                
                trace->file.seekg(1, ios::cur); // sould be a 'D'
                trace->file.read((char*)(*instr)->bytes, (*instr)->size);
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tInstruction : Size " << (*instr)->size << " - Code: " << bin2ascii((*instr)->bytes, static_cast<size_t>((*instr)->size)) << endl;
#endif
                (*instr)->wave = trace->wave;
                (*instr)->from_trace = true;
                
                trace->wave_size++;
                if(previous != NULL)
                    cod_cfg_add_node(cfg, previous, (*instr));
                return true;
            }

            default:
                if(trace->file.good()) {
                    cout << " ---> " << param << " -- " << bin2ascii(&action,1) << action << endl;
                    assert(false);
                }
        }
    }
    return false;
}
