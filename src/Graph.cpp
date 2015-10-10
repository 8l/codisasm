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

#include <vector>
#include <map>
#include <set>

#include "Graph.h"
using namespace std;

bool cfg_compare::operator ()(const cfg_edge_s& lhs, const cfg_edge_s& rhs) const {
    return lhs.addr_wave.first < rhs.addr_wave.first;
}
bool cfg_compare::operator ()(const cfg_edge_s* lhs, const cfg_edge_s* rhs) const {
    return lhs->addr_wave.first < rhs->addr_wave.first;
}

void cod_cfg_free(Cfg* cfg) {
    for(pair<Address_Wave, set<cfg_edge_t*, cfg_compare>* > el : cfg->map_edge) {
        for(cfg_edge_t* c : *(el.second))
            free(c);
        delete el.second;
    }
}
void cod_cfg_set_root(Cfg* cfg, Address_Wave root) {
    cfg->root = root;
    cfg->roots.insert(cfg->root);
}

void cod_cfg_set_root(Cfg* cfg, instruction_t* instr) {
    cod_cfg_set_root(cfg, {instr->addr, instr->wave});
    cfg->map_edge.insert({cfg->root, new set<cfg_edge_t*, cfg_compare>()});
    cfg->map_inst.insert({cfg->root, instr});
}

bool cod_cfg_is_root(Cfg* cfg, Address_Wave inst) {
    return cfg->roots.find(inst) != cfg->roots.end();
}

void cod_cfg_add_node(Cfg* cfg, instruction_t* inst) {
    cfg->map_edge.insert({{inst->addr, inst->wave}, new set<cfg_edge_t*, cfg_compare>()});
    cfg->map_inst.insert({{inst->addr, inst->wave}, inst});
}

void cod_cfg_add_node(Cfg* cfg, instruction_t* parent, instruction_t *inst) {
    map<Address_Wave, set<cfg_edge_t*, cfg_compare>* >::iterator it = cfg->map_edge.find({parent->addr, parent->wave});
    assert(it != cfg->map_edge.end());
    cfg_edge_t* edge = (cfg_edge_t*)malloc(sizeof(cfg_edge_t));
    assert(edge != NULL);
    
    cod_cfg_add_node(cfg, inst);
    
    edge->label = NULL;
    edge->addr_wave = {inst->addr, inst->wave};
    it->second->insert(edge);
}

void cod_cfg_add_edge(Cfg* cfg, Address_Wave source, Address_Wave target) {
    map<Address_Wave, set<cfg_edge_t*, cfg_compare>* >::iterator it = cfg->map_edge.find(source);
    assert(it != cfg->map_edge.end());
    
    cfg_edge_t* edge = (cfg_edge_t*)malloc(sizeof(cfg_edge_t));
    assert(edge != NULL);
    
    edge->label = NULL;
    edge->addr_wave = target;
    it->second->insert(edge);
}

void cod_cfg_add_edge(Cfg* cfg, instruction_t* source, instruction_t* target) {
    cod_cfg_add_edge(cfg, {source->addr, source->wave}, {target->addr, target->wave});
}

bool cod_cfg_edge_exists(Cfg* cfg, instruction_t* source, Address_Wave target) {
    map<Address_Wave, set<cfg_edge_t*, cfg_compare>* >::iterator it = cfg->map_edge.find({source->addr, source->wave});
    if(it == cfg->map_edge.end())
        return false;
    
    cfg_edge_t edge;
    edge.addr_wave = target;
    edge.label = NULL;
    return it->second->find(&edge) != it->second->end();
}

int cod_cfg_nb_parents(Cfg* cfg, Address_Wave ref) {
    int nb = 0;
    for(auto el : cfg->map_edge) {
        for(auto edge : *(el.second)) {
            if(edge->addr_wave.first == ref.first && edge->addr_wave.second == ref.second) {
               nb++;
               break;
            }
        }
    }
    return nb;
}

int cod_cfg_nb_children(Cfg* cfg, Address_Wave ref) {
    return cfg->map_edge.find(ref)->second->size();
}

void cod_cfg_to_xdot(std::ofstream *f, Cfg *cfg, layers_t *layers) {
    assert(f->is_open());
    
    *f << "Digraph G {" << endl;
    
    decltype(cfg->map_edge) new_edges; 
    vector<Address_Wave> rem_edges;
    
// First add all node
    for(pair<Address_Wave, instruction_t*> el : cfg->map_inst) {
        if(run_config.collapse && find(rem_edges.begin(), rem_edges.end(), el.first) != rem_edges.end())
            continue;
        *f << '"' << h2s(el.first.first) << "_" << to_string(el.first.second);
        *f << "\"[label=\"" << 
            h2s(el.first.first) << ": " << el.second->text << "\\l";
        
        if(run_config.collapse) {
            // try to collapse sequential basic block by just looking to the number of children and parent
            Address_Wave source = el.first;
            Address_Wave first_child;
            // while the source has ony one child and this child also has only one parent
            while(cod_cfg_nb_children(cfg, source) == 1 && &(
                    first_child = (*(cfg->map_edge.find(source)->second->begin()))->addr_wave
                ) && cod_cfg_nb_parents(cfg, first_child) == 1) {
                
                // prevent adding the entry point to an other basic bloc, if for example there is a back edge coming to it
                if(cod_cfg_is_root(cfg, first_child))
                    break;
                
                // check if their is a change of layer involving the instruction
                // if found, then the overlapping instruction can't be collapse in the middle of a basic bloc
                bool found = false;
                for(layers_t::iterator lit=layers->begin()+1 ; lit != layers->end() ; lit++) {
                    for(pair<instruction_t*, vector<instruction_t*>* > el2 : **lit) {
                        if((el2.first->addr == source.first && el2.first->wave == source.second) || 
                            (el2.first->addr == first_child.first && el2.first->wave == first_child.second))
                            found = true;

                        for(instruction_t* inst : *(el2.second)) {
                            if((inst->addr == source.first && inst->wave == source.second) || 
                                (inst->addr == first_child.first && inst->wave == first_child.second)) {
                                found = true;
                                break;
                            }
                        }
                        if(found) break;
                    }
                    if(found) break;
                }
                if(found) break;
                
                auto child = cfg->map_inst.find(first_child);
                *f << h2s(child->first.first) << ": " << child->second->text << "\\l";

                auto children = cfg->map_edge.find(first_child);
                new_edges[el.first] = children->second;
                rem_edges.push_back(first_child);

                source = first_child;
            }
        }
        
        *f << "\",shape=box";
        *f << ",style=\"rounded,filled\", fontweight=\"bold\",fillcolor=\"";
        *f << (cod_cfg_is_root(cfg, el.first) ? "orange" : 
                ((el.second->from_trace) ? "pink" : "white"));
        *f  << "\"];" << endl;
    }
    
// Then add the edges
    for(auto el : cfg->map_edge) {
        if(run_config.collapse && find(rem_edges.begin(), rem_edges.end(), el.first) != rem_edges.end())
                continue;
        
        string id = h2s(el.first.first) +"_"+ to_string(el.first.second);
        for(cfg_edge_t* c : *(el.second)) {
            if(run_config.collapse && find(rem_edges.begin(), rem_edges.end(), c->addr_wave) != rem_edges.end())
                continue;
            
            *f << '"' << id << "\" -> " ;
            *f << '"' << h2s(c->addr_wave.first) << "_" << to_string(c->addr_wave.second) << "\"";
            if(c->label != NULL)
                *f << " [label=\"" << c->label << "\"]";
            *f << ";" << endl;
        }
    }
    // those edges was computed when colapsing
    for(auto el : new_edges) {
        string id = h2s(el.first.first) +"_"+ to_string(el.first.second);
        for(cfg_edge_t* c : *(el.second)) {
            *f << '"' << id << "\" -> " ;
            *f << '"' << h2s(c->addr_wave.first) << "_" << to_string(c->addr_wave.second) << "\"";
            if(c->label != NULL)
                *f << " [label=\"" << c->label << "\"]";
            *f << ";" << endl;
        }
    }
    
// Finaly add overlapping instruction edges
    for(layer_t* l : *layers) {
        for(pair<instruction_t*, vector<instruction_t*>* > el : *l) {
            for(instruction_t* inst : *(el.second)) {
                *f << '"' << h2s(el.first->addr) << "_" << el.first->wave << "\" -> \"";
                *f << h2s(inst->addr) << "_" << inst->wave << "\"";
                *f << "[style=dotted, dir=both, arrowhead=odot, arrowtail=odot];" ;
            }
        }
    }
    
    *f << "}" << endl;
}
