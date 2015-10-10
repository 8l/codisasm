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

#include "utils.h"

using namespace std;

const char hexa[] = "0123456789ABCDEF";

string b2s(bool b){
  return b ? "true" : "false";
}

string h2s(add_t a, string prefix) {
    char buf[H2S_SIZE];
#ifdef __APPLE__
    sprintf(buf, "%llX",a);
#else
    sprintf(buf, "%lX",a);
#endif
    buf[H2S_SIZE-1] = '\0';
    return prefix+buf;
}

string i2s(int a){
  return to_string(a);
}

string bin2ascii(char* c, size_t s) {
    string str;
    for(uint i=0 ; i < s ; i++) {
        str += hexa[(c[i] >> 4) & 0x0F];
        str += hexa[c[i] & 0x0F];
    }
    return str;
}
string bin2ascii(uint8_t* c, size_t s) {
    string str;
    for(uint i=0 ; i < s ; i++) {
        str += hexa[(c[i] >> 4) & 0x0F];
        str += hexa[c[i] & 0x0F];
    }
    return str;
}

uint64_t bin2uint64(char* c) {
    return swap_endiant64(
            static_cast<uint64_t>(strtoull(
                bin2ascii(c, 4).c_str(), 
                NULL, 16
            )));
}
int64_t bin2int64(char* c) {
    return swap_endiant64(
            static_cast<int64_t>(strtoull(
                bin2ascii(c, 4).c_str(), 
                NULL, 16
            )));
}
uint32_t bin2uint32(char* c) {
    return swap_endiant32(
            static_cast<uint>(strtoul(
                bin2ascii(c, 4).c_str(), 
                NULL, 16
            )));
}
int32_t bin2int32(char* c) {
    return swap_endiant32(
            static_cast<uint>(strtoul(
                bin2ascii(c, 4).c_str(), 
                NULL, 16
            )));
}
int16_t bin2int16(char* c) {
    return swap_endiant16(
            static_cast<int16_t>(strtoul(
                bin2ascii(c, 4).c_str(), 
                NULL, 16
            )));
}

int64_t swap_endiant64( int64_t val )
{
    val = ((val << 8) & 0xFF00FF00FF00FF00ULL ) | ((val >> 8) & 0x00FF00FF00FF00FFULL );
    val = ((val << 16) & 0xFFFF0000FFFF0000ULL ) | ((val >> 16) & 0x0000FFFF0000FFFFULL );
    return (val << 32) | ((val >> 32) & 0xFFFFFFFFULL);
}

uint64_t swap_endiant64( uint64_t val )
{
    val = ((val << 8) & 0xFF00FF00FF00FF00ULL ) | ((val >> 8) & 0x00FF00FF00FF00FFULL );
    val = ((val << 16) & 0xFFFF0000FFFF0000ULL ) | ((val >> 16) & 0x0000FFFF0000FFFFULL );
    return (val << 32) | (val >> 32);
}

//! Byte swap unsigned short
uint16_t swap_endiant16( uint16_t val ) 
{
    return (val << 8) | (val >> 8 );
}

//! Byte swap short
int16_t swap_endiant16( int16_t val ) 
{
    return (val << 8) | ((val >> 8) & 0xFF);
}

//! Byte swap unsigned int
uint32_t swap_endiant32( uint32_t val )
{
    val = ((val << 8) & 0xFF00FF00 ) | ((val >> 8) & 0xFF00FF ); 
    return (val << 16) | (val >> 16);
}

//! Byte swap int
int32_t swap_endiant32( int32_t val )
{
    val = ((val << 8) & 0xFF00FF00) | ((val >> 8) & 0xFF00FF ); 
    return (val << 16) | ((val >> 16) & 0xFFFF);
}
