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

To compile:
==========
# Go to 
cd codisasmv2/Build
# Use cmake first by
cmake ..

# Finally you can build by
make
# And access executable in codisasmv2/Build/

---------------------------------------------------
---------------------------------------------------

Build the doc:
=============
In codisasmv2/docs you can find htlm file about
the implementation and data structure.

# The developer documentation is generated using DOxygen: 
cd codisasmv2/Build
cmake .. 
# Tape 
make docs
# This will create a html and latex dir
browser codisasmv2/docs/html/index.html


---------------------------------------------------
---------------------------------------------------

How to use:
==========

# Generate first wave listing file:
./codisasmv2 -i ../codisasmv2/tests/ccs2015/malardalen/statemate.exe -l ../codisasmv2/tests/ccs2015/malardalen/statemate.exe.lst
---------------- 
Total inst in trace: 0
Total static disas inst: 1375
Total decoded inst: 1375
Nb used addr : 6443
Total layers: 1
	Layer 1 : 1375 instructions
	(1375)
Unaligned: 
	6443 addresses used by 1 instructions
	(6443)
Time: 0.207212

# Generate first wave CFG file:
./codisasmv2 -i ../codisasmv2/tests/ccs2015/malardalen/statemate.exe -x ../codisasmv2/tests/ccs2015/malardalen/statemate.exe.dot
---------------- 
Total inst in trace: 0
Total static disas inst: 1375
Total decoded inst: 1375
Nb used addr : 6443
Total layers: 1
	Layer 1 : 1375 instructions
	(1375)
Unaligned: 
	6443 addresses used by 1 instructions
	(6443)
Time: 0.261514

# Generate CFG file of 3rd wave:
./codisasmv2 -i ../codisasmv2/tests/ccs2015/Packed_hostname/aspack-hostname.exe.bin_wave2 -c ../codisasmv2/tests/ccs2015/Packed_hostname/aspack-hostname.exe.bin_wave2_CFG.out -x aspack-hostname.exe.bin_wave2.dot
---------------- 
Total inst in trace: 156
Total static disas inst: 201
Total decoded inst: 357
Nb used addr : 1115
Total layers: 1
	Layer 1 : 357 instructions
	(357)
Unaligned: 
	1115 addresses used by 1 instructions
	(1115)
Time: 0.019927




