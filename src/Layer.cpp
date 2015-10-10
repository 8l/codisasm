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

#include "Layer.h"
#include "Graph.h" // cyclic reference
using namespace std;

void cod_layer_free(layers_t *layers) {
    for(layer_t *l : *layers) {
        for(pair<instruction_t*, vector<instruction_t*>*> el : *l)
            delete el.second;
        delete l;
    }
}

void cod_layer_buildLayer(layers_t *layers, Cfg* cfg) {
// First put every instruction in first layer
    layer_t* first = new layer_t();
    for(pair<Address_Wave, instruction_t *> el : cfg->map_inst)
        first->insert({ el.second, new vector<instruction_t*>() });
    layers->push_back(first);
 
// while we add a new layer, check if there is overlapping instruction in that layer
    for(int i=0, e=1 ; i < e ; i++) {
        layer_t *current = new layer_t();
        layer_t *reference = (*layers)[i];
        
        for(layer_t::iterator it = reference->begin() 
                ; it != reference->end() 
                ; it++) {
            vector<instruction_t*> *overlap = new vector<instruction_t*>();
            
            for(pair<instruction_t*, vector<instruction_t*>* > ref : *reference) {
                if(it->first == ref.first || it->first->addr < ref.first->addr || it->first->addr >= ref.first->addr+ref.first->size)
                    continue;
                overlap->push_back(ref.first);
            }
            
            if(overlap->size() > 0) {
                current->insert({ it->first, overlap });
                delete it->second;
                it = reference->erase(it);
                if(it == reference->end()) // avoid seg fault
                    break;
            }
            else
                delete overlap;
        }
        
        if(current->size() > 0) {
            layers->push_back(current);
            e++;
        }
        else
            delete current;
    }
}

map<size_t, size_t>* cod_layer_count_unaligned(Cfg &cfg) {
    map<add_t, size_t> tmp;
    map<add_t, size_t>::iterator check;
    
    for(map < Address_Wave, instruction_t*>::iterator ref=cfg.map_inst.begin(), l=cfg.map_inst.end() ; ref != l ; ++ref) {
        for(add_t addr=ref->second->addr, e=ref->second->addr+ref->second->size ; addr < e ; ++addr) {
            check = tmp.find(addr);
            if(check == tmp.end())
                tmp[addr] = 1;
            else
                tmp[addr]++;
        }
    }
    
    map<size_t, size_t> * stat = new map<size_t, size_t>();
    for(pair<size_t, size_t> el : tmp) {
        (*stat)[el.second] ++;
    }
    
    return stat;
}
