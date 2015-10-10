#include <vertex.h>
#include <string.h>
#include <stdio.h>

char* code = "\xeb\x2a\x5e\x89\x76\x08\xc6\x46\x07\x00\xc7\x46";

int 
main (){
  /* Initialise and disassemble */
  ud_t _u, *u = &_u;
  ud_init (u);
  size_t code_length = strlen (code);
  ud_set_input_buffer (u, (uint8_t*)code, code_length);
  size_t length = ud_disassemble (u);

  /* Build a vertex from the first disassembled instruction */
  vertex_t* vertex1 = (vertex_t*)vertex_build (u);

  /* Allocate vertex2 copy vertex1 */
  vertex_t* vertex2 = (vertex_t*)vertex_alloc ();
  vertex_copy (vertex2, vertex1);
  
  /* Compare vertice */
  if (vertex_comp (vertex1, vertex2) == 0)
    printf ("Vertice are equal.\n");

  /* Add the second instruction to vertex1 */
  length = ud_disassemble (u);
  vertex_add_code (vertex1, u);

  /* Compare vertice */
  if (vertex_comp (vertex1, vertex2) != 0)
    printf ("Vertice are not equal.\n");

  return 0;
}

/* Result 
Vertice are equal.
Vertice are not equal.

*/
