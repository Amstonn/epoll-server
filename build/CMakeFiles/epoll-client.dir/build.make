# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amston/C++/epoll-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amston/C++/epoll-server/build

# Include any dependencies generated for this target.
include CMakeFiles/epoll-client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/epoll-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/epoll-client.dir/flags.make

CMakeFiles/epoll-client.dir/src/client.cpp.o: CMakeFiles/epoll-client.dir/flags.make
CMakeFiles/epoll-client.dir/src/client.cpp.o: ../src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amston/C++/epoll-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/epoll-client.dir/src/client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/epoll-client.dir/src/client.cpp.o -c /home/amston/C++/epoll-server/src/client.cpp

CMakeFiles/epoll-client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll-client.dir/src/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amston/C++/epoll-server/src/client.cpp > CMakeFiles/epoll-client.dir/src/client.cpp.i

CMakeFiles/epoll-client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll-client.dir/src/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amston/C++/epoll-server/src/client.cpp -o CMakeFiles/epoll-client.dir/src/client.cpp.s

# Object files for target epoll-client
epoll__client_OBJECTS = \
"CMakeFiles/epoll-client.dir/src/client.cpp.o"

# External object files for target epoll-client
epoll__client_EXTERNAL_OBJECTS =

../bin/epoll-client: CMakeFiles/epoll-client.dir/src/client.cpp.o
../bin/epoll-client: CMakeFiles/epoll-client.dir/build.make
../bin/epoll-client: CMakeFiles/epoll-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amston/C++/epoll-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/epoll-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/epoll-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/epoll-client.dir/build: ../bin/epoll-client

.PHONY : CMakeFiles/epoll-client.dir/build

CMakeFiles/epoll-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/epoll-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/epoll-client.dir/clean

CMakeFiles/epoll-client.dir/depend:
	cd /home/amston/C++/epoll-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amston/C++/epoll-server /home/amston/C++/epoll-server /home/amston/C++/epoll-server/build /home/amston/C++/epoll-server/build /home/amston/C++/epoll-server/build/CMakeFiles/epoll-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/epoll-client.dir/depend

