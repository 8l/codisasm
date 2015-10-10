#include <pefile.h>
int 
main (int argc, char** argv){
  FILE* fp = fopen (argv[0], "rb");
  pefile_t pefile;
  enum pefile_error_t error = pefile_extract (&pefile, fp);
  fclose (fp);
  switch (error) {
  case PEFILE_ALL_OK :{
    size_t i;
    for (i = 0; i < pefile.buffer_size; ++i)
      putc(pefile.buffer[i], stdout);
    break;
  }
  case PEFILE_FILE_HDR_ERROR :
  case PEFILE_OPT_HDR_ERROR :
  case PEFILE_SEC_TABLE_ERROR :
  case PEFILE_BROKEN_FILE_ERROR :
  case PEFILE_TOO_BIG_ERROR :
  default:
    printf ("Error in files %s\n", argv[1]);
  }
  pefile_free (pefile);
  return 0;
}
