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

#include <map>

#include "TraceCFG.h"

using namespace std;

void cod_tracecfg_init(trace_t *trace) {
    trace->file.open(run_config.cfg_file, ios::binary);
    assert(trace->file.is_open());
    
    trace->wave = run_config.wave; // we have separate file for trace cfg
}

void cod_tracecfg_buildCFG(trace_t *trace, Cfg *cfg) {
    assert(trace->file.is_open());
    
    //NOTE: a map is not good here, because of the possible duplication of keys
    vector<pair<Address_Wave, Address_Wave> > edges;
    
    while(trace->file.good()) {
        int param = trace->file.get();
        char action = trace->file.get();
#ifdef DEBUG
        if(run_config.debug_trace)
            cout << "---> " << param << " -- " << action << endl;
#endif
        switch(action) {
            case 'L':
                trace->file.seekg(4, ios::cur);
                break;
                
            case 'X': {
                char saddr[4];
                trace->file.read(saddr, 4);
                add_t addr = bin2uint32(saddr);
                size_t size = trace->file.get();
                
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tAddr " << bin2ascii(saddr, 4) << " -- " << h2s(addr) << endl;
#endif
                
                instruction_t *instr = cod_inst_create();
                instr->addr = addr;
                instr->size = size;

                instr->bytes = static_cast<uint8_t*>(malloc(static_cast<uint>(instr->size)*sizeof(uint8_t)));
                assert(instr->bytes != NULL);
                
                trace->file.seekg(1, ios::cur); // sould be a 'D'
                trace->file.read((char*)instr->bytes, instr->size);
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tInstruction : Size " << instr->size << " - Code: " << bin2ascii(instr->bytes, static_cast<size_t>(instr->size)) << endl;
#endif
                instr->wave = trace->wave;
                instr->from_trace = true;
                
                trace->wave_size++;
                cod_cfg_add_node(cfg, instr);
                break;
            }
            case 'E': {
                char tmp[4];
                
                trace->file.read(tmp, 4);
                int src_wave = bin2uint32(tmp);
                
                
                trace->file.read(tmp, 4);
                add_t src = bin2uint32(tmp);
                
                trace->file.read(tmp, 4);
                int dst_wave = bin2uint32(tmp);
                
                trace->file.read(tmp, 4);
                add_t dst = bin2uint32(tmp);
                
#ifdef DEBUG
                if(run_config.debug_trace)
                    cout << "\tEdge: " << h2s(src) << " -> " << h2s(dst) << endl;
#endif
// The target might not in the CFG already, so we delayed the creation of the edges
                edges.push_back({{src, src_wave}, {dst, dst_wave}});
                break;
            }
            case 'R': {
                char saddr[4];
                trace->file.read(saddr, 4);
                add_t addr = bin2uint32(saddr);

                cod_cfg_set_root(cfg, {addr, trace->wave});
                break;
            }
            default:
                if(trace->file.good()) {
                    cout << " ---> " << param << " -- " << bin2ascii(&action,1) << action << endl;
                    assert(false);
                }
        }
    }
    
    // add every edges
    for(pair<Address_Wave, Address_Wave> edge : edges) {
        if(cfg->map_inst.find(edge.second) != cfg->map_inst.end())
            cod_cfg_add_edge(cfg, edge.first, edge.second);
    }
}

void cod_tracecfg_free(trace_t *trace) {
    trace->file.close();
}
