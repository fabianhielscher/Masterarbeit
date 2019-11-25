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
include Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/depend.make

# Include the progress variables for this target.
include Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/flags.make

Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o: Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/flags.make
Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx

Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx > CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.i

Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx -o CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.s

# Object files for target ITKPolynomials
ITKPolynomials_OBJECTS = \
"CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o"

# External object files for target ITKPolynomials
ITKPolynomials_EXTERNAL_OBJECTS =

lib/libITKPolynomials-4.13.a: Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/itkMultivariateLegendrePolynomial.cxx.o
lib/libITKPolynomials-4.13.a: Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/build.make
lib/libITKPolynomials-4.13.a: Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../lib/libITKPolynomials-4.13.a"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKPolynomials.dir/cmake_clean_target.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKPolynomials.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/build: lib/libITKPolynomials-4.13.a

.PHONY : Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/build

Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKPolynomials.dir/cmake_clean.cmake
.PHONY : Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/clean

Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/Numerics/Polynomials/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Numerics/Polynomials/src/CMakeFiles/ITKPolynomials.dir/depend
