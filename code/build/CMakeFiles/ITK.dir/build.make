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

# Utility rule file for ITK.

# Include the progress variables for this target.
include CMakeFiles/ITK.dir/progress.make

CMakeFiles/ITK: CMakeFiles/ITK-complete


CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-install
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-mkdir
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-download
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-update
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-patch
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-configure
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-build
CMakeFiles/ITK-complete: ITK-prefix/src/ITK-stamp/ITK-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ITK'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/ITK-complete
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-done

ITK-prefix/src/ITK-stamp/ITK-install: ITK-prefix/src/ITK-stamp/ITK-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ITK'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(MAKE) install
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-install

ITK-prefix/src/ITK-stamp/ITK-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ITK'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/tmp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-mkdir

ITK-prefix/src/ITK-stamp/ITK-download: ITK-prefix/src/ITK-stamp/ITK-gitinfo.txt
ITK-prefix/src/ITK-stamp/ITK-download: ITK-prefix/src/ITK-stamp/ITK-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'ITK'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -P /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/tmp/ITK-gitclone.cmake
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-download

ITK-prefix/src/ITK-stamp/ITK-update: ITK-prefix/src/ITK-stamp/ITK-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ITK'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-update

ITK-prefix/src/ITK-stamp/ITK-patch: ITK-prefix/src/ITK-stamp/ITK-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ITK'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-patch

ITK-prefix/src/ITK-stamp/ITK-configure: ITK-prefix/tmp/ITK-cfgcmd.txt
ITK-prefix/src/ITK-stamp/ITK-configure: ITK-prefix/src/ITK-stamp/ITK-update
ITK-prefix/src/ITK-stamp/ITK-configure: ITK-prefix/src/ITK-stamp/ITK-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ITK'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -DCMAKE_TOOLCHAIN_FILE:FILEPATH= --no-warn-unused-cli -C /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeCacheInit.txt -DITK_LEGACY_REMOVE:BOOL=ON -DITK_BUILD_DEFAULT_MODULES::UNINITIALIZED=ON -DModule_ITKReview::UNINITIALIZED=ON -DModule_SimpleITKFilters::UNINITIALIZED=ON -DPYTHON_EXECUTABLE::FILEPATH=/usr/local/bin/python -DCMAKE_C_VISIBILITY_PRESET:STRING=hidden -DCMAKE_CXX_VISIBILITY_PRESET:STRING=hidden -DITK_TEMPLATE_VISIBILITY_DEFAULT:BOOL=OFF -DCMAKE_BUILD_TYPE::STRING=Release -DCMAKE_MAKE_PROGRAM::FILEPATH=/usr/bin/make -DCMAKE_C_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/cc -DCMAKE_C_FLAGS_DEBUG::STRING=-g "-DCMAKE_C_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_C_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_C_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_CXX_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/c++ "-DCMAKE_CXX_FLAGS::STRING= -std=c++11" -DCMAKE_CXX_FLAGS_DEBUG::STRING=-g "-DCMAKE_CXX_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_LINKER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/ld -DCMAKE_STRIP::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/strip "-DCMAKE_SYSTEM_PREFIX_PATH::UNINITIALIZED=/usr/local;/usr;/;/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents;/Users/fabianhielscher/Dev/Masterarbeit/code/build;/usr/X11R6;/usr/pkg;/opt;/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/usr;/sw;/opt/local" -DCMAKE_SYSTEM_INCLUDE_PATH::UNINITIALIZED=/usr/include/X11 -DCMAKE_SYSTEM_LIBRARY_PATH::UNINITIALIZED=/usr/lib/X11 "-DCMAKE_GENERATOR::INTERNAL=Unix Makefiles" -DSITE::UNINITIALIZED=NoSiteGiven -DBUILDNAME::UNINITIALIZED=NoBuldNameGiven -DCMAKE_OSX_SYSROOT::PATH=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON -DCMAKE_VISIBILITY_INLINES_HIDDEN:BOOL=ON -DBUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTING:BOOL=OFF -DBUILD_SHARED_LIBS:BOOL=OFF -DCMAKE_SKIP_RPATH:BOOL=ON -DCMAKE_INSTALL_PREFIX:PATH=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix -DITK_USE_KWSTYLE:BOOL=OFF -DITK_USE_GIT_PROTOCOL:BOOL=0 -DITK_INSTALL_PACKAGE_DIR=lib/cmake/ITK "-GUnix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-configure

ITK-prefix/src/ITK-stamp/ITK-build: ITK-prefix/src/ITK-stamp/ITK-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ITK'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(MAKE)
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/src/ITK-stamp/ITK-build

ITK: CMakeFiles/ITK
ITK: CMakeFiles/ITK-complete
ITK: ITK-prefix/src/ITK-stamp/ITK-install
ITK: ITK-prefix/src/ITK-stamp/ITK-mkdir
ITK: ITK-prefix/src/ITK-stamp/ITK-download
ITK: ITK-prefix/src/ITK-stamp/ITK-update
ITK: ITK-prefix/src/ITK-stamp/ITK-patch
ITK: ITK-prefix/src/ITK-stamp/ITK-configure
ITK: ITK-prefix/src/ITK-stamp/ITK-build
ITK: CMakeFiles/ITK.dir/build.make

.PHONY : ITK

# Rule to build all files generated by this target.
CMakeFiles/ITK.dir/build: ITK

.PHONY : CMakeFiles/ITK.dir/build

CMakeFiles/ITK.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ITK.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ITK.dir/clean

CMakeFiles/ITK.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/ITK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ITK.dir/depend

