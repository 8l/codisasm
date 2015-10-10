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
 * Implement the useful function to deal with the CFG
 * 
 * \file include/Graph.h 
 * \file src/Graph.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */

#ifndef GRAPH_H
#define	GRAPH_H

#include "Instruction.h"
#include "Layer.h"

#include "liblhs/lhs_types.h"

#include <vector>
#include <list>
#include <algorithm>
#include <unordered_map>
#include <map>
#include <tuple>
#include <string>
#include <fstream>

extern struct run_config_t run_config;

// La classe Address_Wave est le domaine des noeuds.
// C'est la clé des tables de hachage.
// La clé est composée de l'adresse et du numéro de vague
typedef  std::pair<add_t, char> Address_Wave;

// Le type cfg_edge_t est celui des arcs de la classe Cfg.
// il précise le noeud cible et le label sur l'arc
typedef struct cfg_edge_s {
    Address_Wave addr_wave; // clé vers un noeud successeur
    char* label = NULL; // label de l'arc
} cfg_edge_t;

struct cfg_compare {
    bool operator() (const cfg_edge_t* lhs, const cfg_edge_t* rhs) const;
    bool operator() (const cfg_edge_t& lhs, const cfg_edge_t& rhs) const;
};

/*!
 *  La classe Cfg est un graphe dirigé dont les noeuds et les arcs sont étiquettés et possédant une racine:
 * (1) d'une table de hachage qui associe un noeud avec la liste des arcs succeseurs étiquettés
 * (2) d'une table de hachage qui associe un noeud avec l'étiquette du noeud décrivant une instruction
 * (3) la racine du graphe
 */
class Cfg {
public:
   std::map < Address_Wave, std::set <cfg_edge_t*, cfg_compare>* > map_edge; // liste des arcs succsseurs étiquettés
   std::map < Address_Wave, instruction_t*> map_inst; // liste des labels des noeuds
   Address_Wave root;
   std::set<Address_Wave> roots;
};

/*!
 * Convert the CFG to graphviz friendly format (dot) and print it to the provided file
 * 
 * \param std::ofstream *f -- output file
 * \param Cfg *cfg -- cfg to print
 * \param layers_t *layer -- adding layer
 */
void cod_cfg_to_xdot(std::ofstream *f, Cfg *cfg, layers_t *layers);

/*!
 * Free allocated memory of the cfg
 * 
 * \param Cfg* cfg
 */
void cod_cfg_free(Cfg* cfg);

/*!
 * Set root node to the cfg
 */
void cod_cfg_set_root(Cfg* cfg, instruction_t* inst);
void cod_cfg_set_root(Cfg* cfg, Address_Wave root);

/*!
 * Add a not to the CFG and if a parent is given, and edge is also added
 */
void cod_cfg_add_node(Cfg* cfg, instruction_t* parent, instruction_t *inst);
void cod_cfg_add_node(Cfg* cfg, instruction_t* inst);

/*!
 * Add an edge between the source and target to the Cfg
 */
void cod_cfg_add_edge(Cfg* cfg, instruction_t* source, instruction_t* target);
void cod_cfg_add_edge(Cfg* cfg, Address_Wave source, Address_Wave target);

/*!
 * Return true if an edge between source and target exists in the Cfg
 */
bool cod_cfg_edge_exists(Cfg* cfg, instruction_t* source, Address_Wave target);

/*!
 * Return true if inst is the root
 */
bool cod_cfg_is_root(Cfg* cfg, Address_Wave inst);

/*!
 * Return the number of parents
 */
int cod_cfg_nb_parents(Cfg* cfg, Address_Wave ref);

/*!
 * Return the number of children
 */
int cod_cfg_nb_children(Cfg* cfg, Address_Wave ref);
#endif	/* GRAPH_H */
