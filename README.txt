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
# Create Build directory
cd codisasm
mkdir Build
# Use cmake first 
cd Build 
cmake ..
# Then build using make
make
# And the disassembler is in codisasm/Build/
./codisasmv2 -help

#—————————————————————————

---------------------------------------------------

Build the doc:
=============
In codisasm/docs you can find htlm file about
the implementation and data structure.

# The developer documentation is generated using DOxygen: 
make docs
# This will create a html and latex dir
browser codisasm/Build/docs/html/index.html


---------------------------------------------------


How to use:
==========
# There are examples in codisasm/tests/
#———————————————————————————————————————————————————————————
#Example 1
# Malaedalen directory contains example of CCS paper
# Generate a asm file
#———————————————————————————————————————————————————————————
./codisasmv2 -i ../tests/ccs2015/malardalen/statemate.exe -l ../tests/ccs2015/malardalen/statemate.exe.asm
---------------- 
Te output should be
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

And the file -l ../tests/ccs2015/malardalen/statemate.exe.asm
contains the assembly of statemate.exe.

#———————————————————————————————————————————————————————————
#Example 2
# Generate a dot file 
#———————————————————————————————————————————————————————————

./codisasmv2 -i ../tests/ccs2015/malardalen/statemate.exe -x ../tests/ccs2015/malardalen/statemate.exe.dot


#———————————————————————————————————————————————————————————
#Example 2
# Generate the assembly of a wave from a memory dump and a sub-trace.
# In this example, we produce the assembly code of the second wave of 
# hostname packed with aspack from 
# the memory dump aspack-hostname.exe.bin_wave2 extracted at the beginning of the 2nd wave,
# and the sub-trace of the wave 2 aspack-hostname.exe.bin_wave2_CFG.out compacted as  CFG.
# Memory dumps and traces can be obtained from a windows x86-binary
# http://codisasm.lhs.loria.fr/
#———————————————————————————————————————————————————————————

# Generate CFG file of 3rd wave:
./codisasmv2 -i ../tests/ccs2015/Packed_hostname/aspack-hostname.exe.bin_wave2 -c ../tests/ccs2015/Packed_hostname/aspack-hostname.exe.bin_wave2_CFG.out -l ../tests/ccs2015/Packed_hostname/aspack-hostname.exe.bin_wave2.asm
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




