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
include Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/depend.make

# Include the progress variables for this target.
include Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/flags.make

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/flags.make
Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIO.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIO.cxx

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIO.cxx > CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.i

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIO.cxx -o CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.s

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/flags.make
Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFReaderInternal.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFReaderInternal.cxx

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFReaderInternal.cxx > CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.i

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFReaderInternal.cxx -o CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.s

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/flags.make
Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIOFactory.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIOFactory.cxx

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIOFactory.cxx > CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.i

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src/itkTIFFImageIOFactory.cxx -o CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.s

# Object files for target ITKIOTIFF
ITKIOTIFF_OBJECTS = \
"CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o" \
"CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o" \
"CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o"

# External object files for target ITKIOTIFF
ITKIOTIFF_EXTERNAL_OBJECTS =

lib/libITKIOTIFF-4.13.a: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIO.cxx.o
lib/libITKIOTIFF-4.13.a: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFReaderInternal.cxx.o
lib/libITKIOTIFF-4.13.a: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/itkTIFFImageIOFactory.cxx.o
lib/libITKIOTIFF-4.13.a: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/build.make
lib/libITKIOTIFF-4.13.a: Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../../../lib/libITKIOTIFF-4.13.a"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOTIFF.dir/cmake_clean_target.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKIOTIFF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/build: lib/libITKIOTIFF-4.13.a

.PHONY : Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/build

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOTIFF.dir/cmake_clean.cmake
.PHONY : Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/clean

Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/IO/TIFF/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/TIFF/src/CMakeFiles/ITKIOTIFF.dir/depend

