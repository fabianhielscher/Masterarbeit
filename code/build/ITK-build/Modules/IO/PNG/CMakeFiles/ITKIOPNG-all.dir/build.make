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

# Utility rule file for ITKIOPNG-all.

# Include the progress variables for this target.
include Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/progress.make

ITKIOPNG-all: Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/build.make

.PHONY : ITKIOPNG-all

# Rule to build all files generated by this target.
Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/build: ITKIOPNG-all

.PHONY : Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/build

Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/PNG && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOPNG-all.dir/cmake_clean.cmake
.PHONY : Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/clean

Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/PNG /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/PNG /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/PNG/CMakeFiles/ITKIOPNG-all.dir/depend

