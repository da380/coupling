# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/cmake-3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild

# Utility rule file for fftwpp-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/fftwpp-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fftwpp-populate.dir/progress.make

CMakeFiles/fftwpp-populate: CMakeFiles/fftwpp-populate-complete

CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-mkdir
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-patch
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-build
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install
CMakeFiles/fftwpp-populate-complete: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'fftwpp-populate'"
	/opt/cmake-3.26.4/bin/cmake -E make_directory /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles
	/opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles/fftwpp-populate-complete
	/opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-done

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update:
.PHONY : fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-build: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E echo_append
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-build

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure: fftwpp-populate-prefix/tmp/fftwpp-populate-cfgcmd.txt
fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E echo_append
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-gitinfo.txt
fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps && /opt/cmake-3.26.4/bin/cmake -P /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/tmp/fftwpp-populate-gitclone.cmake
	cd /home/adcm2/raidam/coupling/work/build/_deps && /opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E echo_append
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'fftwpp-populate'"
	/opt/cmake-3.26.4/bin/cmake -Dcfgdir= -P /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/tmp/fftwpp-populate-mkdirs.cmake
	/opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-mkdir

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-patch: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'fftwpp-populate'"
	/opt/cmake-3.26.4/bin/cmake -E echo_append
	/opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-patch

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update:
.PHONY : fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-test: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E echo_append
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build && /opt/cmake-3.26.4/bin/cmake -E touch /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-test

fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'fftwpp-populate'"
	cd /home/adcm2/raidam/coupling/work/build/_deps/fftwpp-src && /opt/cmake-3.26.4/bin/cmake -P /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/tmp/fftwpp-populate-gitupdate.cmake

fftwpp-populate: CMakeFiles/fftwpp-populate
fftwpp-populate: CMakeFiles/fftwpp-populate-complete
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-build
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-configure
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-download
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-install
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-mkdir
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-patch
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-test
fftwpp-populate: fftwpp-populate-prefix/src/fftwpp-populate-stamp/fftwpp-populate-update
fftwpp-populate: CMakeFiles/fftwpp-populate.dir/build.make
.PHONY : fftwpp-populate

# Rule to build all files generated by this target.
CMakeFiles/fftwpp-populate.dir/build: fftwpp-populate
.PHONY : CMakeFiles/fftwpp-populate.dir/build

CMakeFiles/fftwpp-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fftwpp-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fftwpp-populate.dir/clean

CMakeFiles/fftwpp-populate.dir/depend:
	cd /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild /raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/CMakeFiles/fftwpp-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fftwpp-populate.dir/depend
