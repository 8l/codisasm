cmake_minimum_required (VERSION 2.6)
project ("CoDisAsm V2") 
CMAKE_POLICY(SET CMP0015 NEW)
#set(CMAKE_VERBOSE_MAKEFILE on )
        
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11 -g -O3 -Werror -Wall -Wextra -pedantic")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-c++98-compat -Wno-documentation")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-exit-time-destructors -Wno-global-constructors -Wno-padded -Wno-implicit-fallthrough")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-shorten-64-to-32 -Wno-c++98-compat-pedantic -Wno-sign-conversion -Wno-conversion")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-switch-enum -Wno-old-style-cast")

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DDEBUG")
        
include_directories(
    include/ 
    3rdparty/
    3rdparty/liblhs/
    3rdparty/libelf/ 
    3rdparty/libelf/libelf-0.8.13/lib/ 
    3rdparty/libinput_code/src/ 
)
if (APPLE)
  include_directories(3rdparty/xed2-intel64_mac/include/)
  link_directories(./3rdparty/xed2-intel64_mac/lib)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wfatal-errors -Weverything -stdlib=libc++ -Wno-missing-prototypes")
else()
  include_directories(3rdparty/xed2-intel64/include/)
  link_directories(./3rdparty/xed2-intel64/lib)

SET (CMAKE_AR      "/usr/lib/llvm-3.5/bin/llvm-ar")
SET (CMAKE_LINKER  "/usr/lib/llvm-3.5/bin/llvm-ld")
SET (CMAKE_NM      "/usr/lib/llvm-3.5/bin/llvm-nm")
SET (CMAKE_OBJDUMP "/usr/lib/llvm-3.5/bin/llvm-objdump")
SET (CMAKE_RANLIB  "/usr/lib/llvm-3.5/bin/llvm-ranlib")
endif()

add_subdirectory(3rdparty/libelf)

file(GLOB libinput_code_src 3rdparty/libinput_code/src/*.c) 
file(GLOB libinput_code_headers 3rdparty/libinput_code/src/*.h) 
add_library(libinput_code 
    ${libinput_code_headers}
    ${libinput_code_src}
)
set_property(TARGET libinput_code PROPERTY PREFIX "")

file(GLOB cppfiles src/*.cpp) 
add_executable(codisasmv2 main.cpp ${cppfiles})

target_link_libraries(codisasmv2 libinput_code libelf libxed.a)

##Add a target to generate API documentation with Doxygen
find_package(Doxygen)
if(DOXYGEN_FOUND)
    file(MAKE_DIRECTORY ./docs/)
    configure_file(./docs/Doxyfile.in ./docs/Doxyfile @ONLY)
    add_custom_target(docs 
        ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/docs/Doxyfile
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} 
        COMMENT "Generating API documentation with Doxygen" VERBATIM)
endif(DOXYGEN_FOUND)
