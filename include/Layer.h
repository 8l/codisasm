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
 * Implement the layer computation
 * 
 * \file include/Layer.h 
 * \file src/Layer.cpp
 * \author Benjamin Rouxel <benjamin.rouxel@inria.fr>
 * \copyright CeCILL license under French law and abiding by the rules of distribution of free software.
 */

#ifndef LAYER_H
#define	LAYER_H

#include "Instruction.h"
class Cfg;

#include <vector>
#include <cassert>
#include <stack>
#include <map>
#include <algorithm>
#include <utility>

typedef std::map<instruction_t*, std::vector<instruction_t*>* > layer_t;
typedef std::vector<layer_t*> layers_t;

/*!
 * Build the layer from the CFG
 */
void cod_layer_buildLayer(layers_t *layers, Cfg* cfg);

/*!
 * Free the allocated memory during the building of layers
 */
void cod_layer_free(layers_t *layers);

/*!
 * Return a map representing the number of re-used address
 * the key is the number of time an address is used
 * the value is the number of address
 * ex:
 *   | eb | ff | c3 | c3
 *   | jmp +1  |    | ret
 *       | inc ebx  |
 *   
 *   ---> the map will be : 
 *          { 1 = 3             (3 addresses are used once)
 *            2 = 1 }           (1 address is used twice)
 */
std::map<size_t, size_t>* cod_layer_count_unaligned(Cfg &cfg);

#endif	/* LAYER_H */

