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
include _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/flags.make

_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o: _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/flags.make
_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o: _deps/eigen3-build/doc/snippets/compile_DirectionWise_replicate.cpp
_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o: _deps/eigen3-src/doc/snippets/DirectionWise_replicate.cpp
_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o: _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex/Documents/c++/coupling/work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o -MF CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o.d -o CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o -c /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets/compile_DirectionWise_replicate.cpp

_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.i"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets/compile_DirectionWise_replicate.cpp > CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.i

_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.s"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets/compile_DirectionWise_replicate.cpp -o CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.s

# Object files for target compile_DirectionWise_replicate
compile_DirectionWise_replicate_OBJECTS = \
"CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o"

# External object files for target compile_DirectionWise_replicate
compile_DirectionWise_replicate_EXTERNAL_OBJECTS =

bin/compile_DirectionWise_replicate: _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/compile_DirectionWise_replicate.cpp.o
bin/compile_DirectionWise_replicate: _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/build.make
bin/compile_DirectionWise_replicate: _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex/Documents/c++/coupling/work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/compile_DirectionWise_replicate"
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_DirectionWise_replicate.dir/link.txt --verbose=$(VERBOSE)
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && ../../../../bin/compile_DirectionWise_replicate >/home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets/DirectionWise_replicate.out

# Rule to build all files generated by this target.
_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/build: bin/compile_DirectionWise_replicate
.PHONY : _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/build

_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/clean:
	cd /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_DirectionWise_replicate.dir/cmake_clean.cmake
.PHONY : _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/clean

_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/depend:
	cd /home/alex/Documents/c++/coupling/work/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/Documents/c++/coupling/work /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-src/doc/snippets /home/alex/Documents/c++/coupling/work/build /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets /home/alex/Documents/c++/coupling/work/build/_deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/eigen3-build/doc/snippets/CMakeFiles/compile_DirectionWise_replicate.dir/depend

