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

# Utility rule file for ITKVideoIO-all.

# Include the progress variables for this target.
include Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/progress.make

ITKVideoIO-all: Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/build.make

.PHONY : ITKVideoIO-all

# Rule to build all files generated by this target.
Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/build: ITKVideoIO-all

.PHONY : Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/build

Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Video/IO && $(CMAKE_COMMAND) -P CMakeFiles/ITKVideoIO-all.dir/cmake_clean.cmake
.PHONY : Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/clean

Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Video/IO /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Video/IO /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Video/IO/CMakeFiles/ITKVideoIO-all.dir/depend
