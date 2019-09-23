# Set the important environmental variables that auto-conf uses to
# configure, mostly these are passed from the CMake
# configuration. Others are just explicitly passed from the
# enviroment. If there is a problem with them in the future they can
# be addressed in CMake with the same structure.

cmake_policy(VERSION 3.10.0)

set(ENV{CC} " /Library/Developer/CommandLineTools/usr/bin/cc")
set(ENV{CFLAGS} " -O3 -DNDEBUG")
set(ENV{LDFLAGS} " ")

set(ENV{LIBS} "$ENV{LIBS}")
set(ENV{CPP} "$ENV{CPP}")
set(ENV{CPPFLAGS} "$ENV{CPPFLAGS}")

set(ENV{CXX} " /Library/Developer/CommandLineTools/usr/bin/c++")
set(ENV{CXXFLAGS} " -std=c++11 -O3 -DNDEBUG")

set(ENV{YACC} "/usr/bin/bison" )
set(ENV{YFLAGS} "-y" )

if(OFF)
  execute_process(
    COMMAND sh /Users/fabianhielscher/Dev/Masterarbeit/code/build/Swig-prefix/src/Swig/autogen.sh
    WORKING_DIRECTORY /Users/fabianhielscher/Dev/Masterarbeit/code/build/Swig-prefix/src/Swig
    )
endif()

execute_process(
  COMMAND sh /Users/fabianhielscher/Dev/Masterarbeit/code/build/Swig-prefix/src/Swig/configure
    --prefix=/Users/fabianhielscher/Dev/Masterarbeit/code/build/Swig
    --with-pcre-prefix=/Users/fabianhielscher/Dev/Masterarbeit/code/build/PCRE
    --without-octave
    --with-python=/usr/local/bin/python
  WORKING_DIRECTORY /Users/fabianhielscher/Dev/Masterarbeit/code/build/Swig-prefix/src/Swig-build
)
