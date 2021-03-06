# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build

# Include any dependencies generated for this target.
include Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/depend.make

# Include the progress variables for this target.
include Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/flags.make

Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.o: Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/flags.make
Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/libLBFGS/src/lbfgs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/itklbfgs.dir/lbfgs.c.o   -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/libLBFGS/src/lbfgs.c

Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/itklbfgs.dir/lbfgs.c.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/libLBFGS/src/lbfgs.c > CMakeFiles/itklbfgs.dir/lbfgs.c.i

Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/itklbfgs.dir/lbfgs.c.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/libLBFGS/src/lbfgs.c -o CMakeFiles/itklbfgs.dir/lbfgs.c.s

# Object files for target itklbfgs
itklbfgs_OBJECTS = \
"CMakeFiles/itklbfgs.dir/lbfgs.c.o"

# External object files for target itklbfgs
itklbfgs_EXTERNAL_OBJECTS =

lib/libitklbfgs-4.13.a: Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/lbfgs.c.o
lib/libitklbfgs-4.13.a: Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/build.make
lib/libitklbfgs-4.13.a: Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../lib/libitklbfgs-4.13.a"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && $(CMAKE_COMMAND) -P CMakeFiles/itklbfgs.dir/cmake_clean_target.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/itklbfgs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/build: lib/libitklbfgs-4.13.a

.PHONY : Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/build

Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src && $(CMAKE_COMMAND) -P CMakeFiles/itklbfgs.dir/cmake_clean.cmake
.PHONY : Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/clean

Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/libLBFGS/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/ThirdParty/libLBFGS/src/CMakeFiles/itklbfgs.dir/depend

