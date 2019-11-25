# Set the important environmental variables that auto-conf uses to
# configure, mostly these are passed from the CMake
# configuration. Others are just explicitly passed from the
# enviroment. If there is a problem with them in the future they can
# be addressed in CMake with the same structure.

set(ENV{CC} " /Library/Developer/CommandLineTools/usr/bin/cc")
set(ENV{CFLAGS} " -O3 -DNDEBUG")
set(ENV{LDFLAGS} " ")

set(ENV{LIBS} "$ENV{LIBS}")

set(ENV{CPP} "$ENV{CPP}")
set(ENV{CPPFLAGS} "$ENV{CPPFLAGS}")
set(ENV{CXXPP} "$ENV{CXXPP}")

set(ENV{CXX} " /Library/Developer/CommandLineTools/usr/bin/c++")
set(ENV{CXXFLAGS} " -std=c++11 -O3 -DNDEBUG")


set(ENV{YACC} "" )
set(ENV{YFLAGS} "" )

execute_process(
  COMMAND sh /Users/fabianhielscher/Dev/Masterarbeit/code/build/PCRE-prefix/src/PCRE/configure --prefix=/Users/fabianhielscher/Dev/Masterarbeit/code/build/PCRE  --disable-shared
  WORKING_DIRECTORY /Users/fabianhielscher/Dev/Masterarbeit/code/build/PCRE-prefix/src/PCRE-build
)
