# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex/Documents/c++/coupling/work

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/Documents/c++/coupling/work/build

# Include any dependencies generated for this target.
include _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/flags.make

_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o: _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/flags.make
_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o: _deps/eigen3-src/doc/examples/tut_arithmetic_dot_cross.cpp
_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o: _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex/Documents/c++/coupling/work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o -MF CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o.d -o CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o -c /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-src/doc/examples/tut_arithmetic_dot_cross.cpp

_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.i"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-src/doc/examples/tut_arithmetic_dot_cross.cpp > CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.i

_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.s"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-src/doc/examples/tut_arithmetic_dot_cross.cpp -o CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.s

# Object files for target tut_arithmetic_dot_cross
tut_arithmetic_dot_cross_OBJECTS = \
"CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o"

# External object files for target tut_arithmetic_dot_cross
tut_arithmetic_dot_cross_EXTERNAL_OBJECTS =

bin/tut_arithmetic_dot_cross: _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/tut_arithmetic_dot_cross.cpp.o
bin/tut_arithmetic_dot_cross: _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/build.make
bin/tut_arithmetic_dot_cross: _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex/Documents/c++/coupling/work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/tut_arithmetic_dot_cross"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tut_arithmetic_dot_cross.dir/link.txt --verbose=$(VERBOSE)
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && ../../../../bin/tut_arithmetic_dot_cross >/home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples/tut_arithmetic_dot_cross.out

# Rule to build all files generated by this target.
_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/build: bin/tut_arithmetic_dot_cross
.PHONY : _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/build

_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/clean:
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/tut_arithmetic_dot_cross.dir/cmake_clean.cmake
.PHONY : _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/clean

_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/depend:
	cd /home/alex/Documents/c++/coupling/work/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/Documents/c++/coupling/work /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-src/doc/examples /home/alex/Documents/c++/coupling/work/build /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/eigen3-build/doc/examples/CMakeFiles/tut_arithmetic_dot_cross.dir/depend

