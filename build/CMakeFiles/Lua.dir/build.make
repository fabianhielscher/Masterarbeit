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
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build

# Utility rule file for Lua.

# Include the progress variables for this target.
include CMakeFiles/Lua.dir/progress.make

CMakeFiles/Lua: CMakeFiles/Lua-complete


CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-install
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-mkdir
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-download
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-update
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-patch
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-configure
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-build
CMakeFiles/Lua-complete: Lua-prefix/src/Lua-stamp/Lua-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'Lua'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/Lua-complete
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-done

Lua-prefix/src/Lua-stamp/Lua-install: Lua-prefix/src/Lua-stamp/Lua-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'Lua'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && $(MAKE) install
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-install

Lua-prefix/src/Lua-stamp/Lua-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'Lua'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/tmp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-mkdir

Lua-prefix/src/Lua-stamp/Lua-download: Lua-prefix/src/Lua-stamp/Lua-urlinfo.txt
Lua-prefix/src/Lua-stamp/Lua-download: Lua-prefix/src/Lua-stamp/Lua-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (verify and extract) for 'Lua'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -P /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/verify-Lua.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -P /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/extract-Lua.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-download

Lua-prefix/src/Lua-stamp/Lua-update: Lua-prefix/src/Lua-stamp/Lua-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'Lua'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-update

Lua-prefix/src/Lua-stamp/Lua-patch: Lua-prefix/src/Lua-stamp/Lua-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'Lua'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E copy_if_different /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild/lua.cmake /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua/CMakeLists.txt
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-patch

Lua-prefix/src/Lua-stamp/Lua-configure: Lua-prefix/tmp/Lua-cfgcmd.txt
Lua-prefix/src/Lua-stamp/Lua-configure: Lua-prefix/src/Lua-stamp/Lua-update
Lua-prefix/src/Lua-stamp/Lua-configure: Lua-prefix/src/Lua-stamp/Lua-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'Lua'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -DCMAKE_TOOLCHAIN_FILE:FILEPATH= --no-warn-unused-cli -C /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build/CMakeCacheInit.txt -DCMAKE_BUILD_TYPE::STRING=Release -DCMAKE_MAKE_PROGRAM::FILEPATH=/usr/bin/make -DCMAKE_C_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/cc -DCMAKE_C_FLAGS_DEBUG::STRING=-g "-DCMAKE_C_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_C_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_C_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_CXX_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/c++ "-DCMAKE_CXX_FLAGS::STRING= -std=c++11" -DCMAKE_CXX_FLAGS_DEBUG::STRING=-g "-DCMAKE_CXX_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_LINKER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/ld -DCMAKE_STRIP::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/strip "-DCMAKE_SYSTEM_PREFIX_PATH::UNINITIALIZED=/usr/local;/usr;/;/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents;/Users/fabianhielscher/Dev/Masterarbeit/code/build;/usr/X11R6;/usr/pkg;/opt;/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/usr;/sw;/opt/local" -DCMAKE_SYSTEM_INCLUDE_PATH::UNINITIALIZED=/usr/include/X11 -DCMAKE_SYSTEM_LIBRARY_PATH::UNINITIALIZED=/usr/lib/X11 "-DCMAKE_GENERATOR::INTERNAL=Unix Makefiles" -DSITE::UNINITIALIZED=NoSiteGiven -DBUILDNAME::UNINITIALIZED=NoBuldNameGiven -DCMAKE_OSX_SYSROOT::PATH=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk -D BUILD_SHARED_LIBS:BOOL=OFF -D CMAKE_INSTALL_PREFIX:PATH=/Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua "-GUnix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-configure

Lua-prefix/src/Lua-stamp/Lua-build: Lua-prefix/src/Lua-stamp/Lua-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'Lua'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && $(MAKE)
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Lua-prefix/src/Lua-stamp/Lua-build

Lua: CMakeFiles/Lua
Lua: CMakeFiles/Lua-complete
Lua: Lua-prefix/src/Lua-stamp/Lua-install
Lua: Lua-prefix/src/Lua-stamp/Lua-mkdir
Lua: Lua-prefix/src/Lua-stamp/Lua-download
Lua: Lua-prefix/src/Lua-stamp/Lua-update
Lua: Lua-prefix/src/Lua-stamp/Lua-patch
Lua: Lua-prefix/src/Lua-stamp/Lua-configure
Lua: Lua-prefix/src/Lua-stamp/Lua-build
Lua: CMakeFiles/Lua.dir/build.make

.PHONY : Lua

# Rule to build all files generated by this target.
CMakeFiles/Lua.dir/build: Lua

.PHONY : CMakeFiles/Lua.dir/build

CMakeFiles/Lua.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lua.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lua.dir/clean

CMakeFiles/Lua.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/Lua.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lua.dir/depend
