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
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build

# Include any dependencies generated for this target.
include CMakeFiles/counter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/counter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/counter.dir/flags.make

CMakeFiles/counter.dir/counter.c.o: CMakeFiles/counter.dir/flags.make
CMakeFiles/counter.dir/counter.c.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src/counter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/counter.dir/counter.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/counter.dir/counter.c.o   -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src/counter.c

CMakeFiles/counter.dir/counter.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/counter.dir/counter.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src/counter.c > CMakeFiles/counter.dir/counter.c.i

CMakeFiles/counter.dir/counter.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/counter.dir/counter.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src/counter.c -o CMakeFiles/counter.dir/counter.c.s

# Object files for target counter
counter_OBJECTS = \
"CMakeFiles/counter.dir/counter.c.o"

# External object files for target counter
counter_EXTERNAL_OBJECTS =

counter.so: CMakeFiles/counter.dir/counter.c.o
counter.so: CMakeFiles/counter.dir/build.make
counter.so: CMakeFiles/counter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module counter.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/counter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/counter.dir/build: counter.so

.PHONY : CMakeFiles/counter.dir/build

CMakeFiles/counter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/counter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/counter.dir/clean

CMakeFiles/counter.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeTmp/link_flags/osx_dynamic_lookup/MODULE/SHARED/build/CMakeFiles/counter.dir/DependInfo.cmake
.PHONY : CMakeFiles/counter.dir/depend

