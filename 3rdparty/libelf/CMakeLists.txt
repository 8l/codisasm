cmake_minimum_required(VERSION 2.6)
project (LIBELF C)

set (PATH_LIBELF_SRC libelf-0.8.13/lib)
set (INCLUDES ${PATH_LIBELF_SRC} ${PROJECT_BINARY_DIR})
include_directories (${INCLUDES}) 


add_library (libelf
	${PATH_LIBELF_SRC}/32.fsize.c
	${PATH_LIBELF_SRC}/32.getehdr.c
	${PATH_LIBELF_SRC}/32.getphdr.c
	${PATH_LIBELF_SRC}/32.getshdr.c
	${PATH_LIBELF_SRC}/32.newehdr.c
	${PATH_LIBELF_SRC}/32.newphdr.c
	${PATH_LIBELF_SRC}/32.xlatetof.c
	${PATH_LIBELF_SRC}/64.xlatetof.c
	${PATH_LIBELF_SRC}/assert.c
	${PATH_LIBELF_SRC}/begin.c
	${PATH_LIBELF_SRC}/checksum.c
	${PATH_LIBELF_SRC}/cntl.c
	${PATH_LIBELF_SRC}/cook.c
	${PATH_LIBELF_SRC}/data.c
	${PATH_LIBELF_SRC}/end.c
	${PATH_LIBELF_SRC}/errmsg.c
	${PATH_LIBELF_SRC}/errno.c
	${PATH_LIBELF_SRC}/fill.c
	${PATH_LIBELF_SRC}/flag.c
	${PATH_LIBELF_SRC}/gelfehdr.c
	${PATH_LIBELF_SRC}/gelfphdr.c
	${PATH_LIBELF_SRC}/gelfshdr.c
	${PATH_LIBELF_SRC}/gelftrans.c
	${PATH_LIBELF_SRC}/getarhdr.c
	${PATH_LIBELF_SRC}/getaroff.c
	${PATH_LIBELF_SRC}/getarsym.c
	${PATH_LIBELF_SRC}/getbase.c
	${PATH_LIBELF_SRC}/getdata.c
	${PATH_LIBELF_SRC}/getident.c
	${PATH_LIBELF_SRC}/getscn.c
	${PATH_LIBELF_SRC}/hash.c
	${PATH_LIBELF_SRC}/input.c
	${PATH_LIBELF_SRC}/kind.c
	${PATH_LIBELF_SRC}/memset.c
	${PATH_LIBELF_SRC}/ndxscn.c
	${PATH_LIBELF_SRC}/newdata.c
	${PATH_LIBELF_SRC}/newscn.c
	${PATH_LIBELF_SRC}/next.c
	${PATH_LIBELF_SRC}/nextscn.c
	${PATH_LIBELF_SRC}/nlist.c
	${PATH_LIBELF_SRC}/opt.delscn.c
	${PATH_LIBELF_SRC}/rand.c
	${PATH_LIBELF_SRC}/rawdata.c
	${PATH_LIBELF_SRC}/rawfile.c
	${PATH_LIBELF_SRC}/strptr.c
	${PATH_LIBELF_SRC}/swap64.c
	${PATH_LIBELF_SRC}/update.c
	${PATH_LIBELF_SRC}/verdef_32_tof.c
	${PATH_LIBELF_SRC}/verdef_32_tom.c
	${PATH_LIBELF_SRC}/verdef_64_tof.c
	${PATH_LIBELF_SRC}/verdef_64_tom.c
	${PATH_LIBELF_SRC}/version.c
	${PATH_LIBELF_SRC}/x.elfext.c
	${PATH_LIBELF_SRC}/x.movscn.c
	${PATH_LIBELF_SRC}/x.remscn.c)

if(HAVE_GETOPT_H)
	set_property(TARGET libelf PROPERTY COMPILE_DEFINITIONS HAVE_UNISTD_H HAVE_CONFIG_H )
else(HAVE_GETOPT_H)
	set_property(TARGET libelf PROPERTY COMPILE_DEFINITIONS HAVE_CONFIG_H)
endif(HAVE_GETOPT_H)

set_property(TARGET libelf PROPERTY PREFIX "")

configure_file (
  "${PROJECT_SOURCE_DIR}/sys_elf.h.in"
  "${PROJECT_BINARY_DIR}/sys_elf.h"
)
configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_BINARY_DIR}/config.h"
)
