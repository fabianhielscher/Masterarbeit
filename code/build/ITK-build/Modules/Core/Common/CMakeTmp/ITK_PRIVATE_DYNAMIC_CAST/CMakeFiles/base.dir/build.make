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
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST

# Include any dependencies generated for this target.
include CMakeFiles/base.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/base.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/base.dir/flags.make

CMakeFiles/base.dir/base.cxx.o: CMakeFiles/base.dir/flags.make
CMakeFiles/base.dir/base.cxx.o: base.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/base.dir/base.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/base.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/base.cxx

CMakeFiles/base.dir/base.cxx.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/base.dir/base.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/base.cxx > CMakeFiles/base.dir/base.cxx.i

CMakeFiles/base.dir/base.cxx.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/base.dir/base.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/base.cxx -o CMakeFiles/base.dir/base.cxx.s

# Object files for target base
base_OBJECTS = \
"CMakeFiles/base.dir/base.cxx.o"

# External object files for target base
base_EXTERNAL_OBJECTS =

libbase.dylib: CMakeFiles/base.dir/base.cxx.o
libbase.dylib: CMakeFiles/base.dir/build.make
libbase.dylib: CMakeFiles/base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libbase.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/base.dir/build: libbase.dylib

.PHONY : CMakeFiles/base.dir/build

CMakeFiles/base.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean.cmake
.PHONY : CMakeFiles/base.dir/clean

CMakeFiles/base.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles/base.dir/DependInfo.cmake
.PHONY : CMakeFiles/base.dir/depend

