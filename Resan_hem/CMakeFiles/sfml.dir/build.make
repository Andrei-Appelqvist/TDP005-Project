# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/andmo435/Documents/TDP005/Projekt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andmo435/Documents/TDP005/Projekt

# Include any dependencies generated for this target.
include CMakeFiles/sfml.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sfml.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sfml.dir/flags.make

CMakeFiles/sfml.dir/sfml_test.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/sfml_test.cpp.o: sfml_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sfml.dir/sfml_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/sfml_test.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/sfml_test.cpp

CMakeFiles/sfml.dir/sfml_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/sfml_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/sfml_test.cpp > CMakeFiles/sfml.dir/sfml_test.cpp.i

CMakeFiles/sfml.dir/sfml_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/sfml_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/sfml_test.cpp -o CMakeFiles/sfml.dir/sfml_test.cpp.s

CMakeFiles/sfml.dir/sfml_test.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/sfml_test.cpp.o.requires

CMakeFiles/sfml.dir/sfml_test.cpp.o.provides: CMakeFiles/sfml.dir/sfml_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/sfml_test.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/sfml_test.cpp.o.provides

CMakeFiles/sfml.dir/sfml_test.cpp.o.provides.build: CMakeFiles/sfml.dir/sfml_test.cpp.o


CMakeFiles/sfml.dir/car.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/car.cpp.o: car.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sfml.dir/car.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/car.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/car.cpp

CMakeFiles/sfml.dir/car.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/car.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/car.cpp > CMakeFiles/sfml.dir/car.cpp.i

CMakeFiles/sfml.dir/car.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/car.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/car.cpp -o CMakeFiles/sfml.dir/car.cpp.s

CMakeFiles/sfml.dir/car.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/car.cpp.o.requires

CMakeFiles/sfml.dir/car.cpp.o.provides: CMakeFiles/sfml.dir/car.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/car.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/car.cpp.o.provides

CMakeFiles/sfml.dir/car.cpp.o.provides.build: CMakeFiles/sfml.dir/car.cpp.o


CMakeFiles/sfml.dir/collision.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/collision.cpp.o: collision.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sfml.dir/collision.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/collision.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/collision.cpp

CMakeFiles/sfml.dir/collision.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/collision.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/collision.cpp > CMakeFiles/sfml.dir/collision.cpp.i

CMakeFiles/sfml.dir/collision.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/collision.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/collision.cpp -o CMakeFiles/sfml.dir/collision.cpp.s

CMakeFiles/sfml.dir/collision.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/collision.cpp.o.requires

CMakeFiles/sfml.dir/collision.cpp.o.provides: CMakeFiles/sfml.dir/collision.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/collision.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/collision.cpp.o.provides

CMakeFiles/sfml.dir/collision.cpp.o.provides.build: CMakeFiles/sfml.dir/collision.cpp.o


CMakeFiles/sfml.dir/buff_debuff.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/buff_debuff.cpp.o: buff_debuff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sfml.dir/buff_debuff.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/buff_debuff.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/buff_debuff.cpp

CMakeFiles/sfml.dir/buff_debuff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/buff_debuff.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/buff_debuff.cpp > CMakeFiles/sfml.dir/buff_debuff.cpp.i

CMakeFiles/sfml.dir/buff_debuff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/buff_debuff.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/buff_debuff.cpp -o CMakeFiles/sfml.dir/buff_debuff.cpp.s

CMakeFiles/sfml.dir/buff_debuff.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/buff_debuff.cpp.o.requires

CMakeFiles/sfml.dir/buff_debuff.cpp.o.provides: CMakeFiles/sfml.dir/buff_debuff.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/buff_debuff.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/buff_debuff.cpp.o.provides

CMakeFiles/sfml.dir/buff_debuff.cpp.o.provides.build: CMakeFiles/sfml.dir/buff_debuff.cpp.o


CMakeFiles/sfml.dir/bullet.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/bullet.cpp.o: bullet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sfml.dir/bullet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/bullet.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/bullet.cpp

CMakeFiles/sfml.dir/bullet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/bullet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/bullet.cpp > CMakeFiles/sfml.dir/bullet.cpp.i

CMakeFiles/sfml.dir/bullet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/bullet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/bullet.cpp -o CMakeFiles/sfml.dir/bullet.cpp.s

CMakeFiles/sfml.dir/bullet.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/bullet.cpp.o.requires

CMakeFiles/sfml.dir/bullet.cpp.o.provides: CMakeFiles/sfml.dir/bullet.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/bullet.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/bullet.cpp.o.provides

CMakeFiles/sfml.dir/bullet.cpp.o.provides.build: CMakeFiles/sfml.dir/bullet.cpp.o


CMakeFiles/sfml.dir/game_field.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/game_field.cpp.o: game_field.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sfml.dir/game_field.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/game_field.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/game_field.cpp

CMakeFiles/sfml.dir/game_field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/game_field.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/game_field.cpp > CMakeFiles/sfml.dir/game_field.cpp.i

CMakeFiles/sfml.dir/game_field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/game_field.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/game_field.cpp -o CMakeFiles/sfml.dir/game_field.cpp.s

CMakeFiles/sfml.dir/game_field.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/game_field.cpp.o.requires

CMakeFiles/sfml.dir/game_field.cpp.o.provides: CMakeFiles/sfml.dir/game_field.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/game_field.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/game_field.cpp.o.provides

CMakeFiles/sfml.dir/game_field.cpp.o.provides.build: CMakeFiles/sfml.dir/game_field.cpp.o


CMakeFiles/sfml.dir/score.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/score.cpp.o: score.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sfml.dir/score.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/score.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/score.cpp

CMakeFiles/sfml.dir/score.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/score.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/score.cpp > CMakeFiles/sfml.dir/score.cpp.i

CMakeFiles/sfml.dir/score.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/score.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/score.cpp -o CMakeFiles/sfml.dir/score.cpp.s

CMakeFiles/sfml.dir/score.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/score.cpp.o.requires

CMakeFiles/sfml.dir/score.cpp.o.provides: CMakeFiles/sfml.dir/score.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/score.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/score.cpp.o.provides

CMakeFiles/sfml.dir/score.cpp.o.provides.build: CMakeFiles/sfml.dir/score.cpp.o


CMakeFiles/sfml.dir/game_state.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/game_state.cpp.o: game_state.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sfml.dir/game_state.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/game_state.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/game_state.cpp

CMakeFiles/sfml.dir/game_state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/game_state.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/game_state.cpp > CMakeFiles/sfml.dir/game_state.cpp.i

CMakeFiles/sfml.dir/game_state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/game_state.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/game_state.cpp -o CMakeFiles/sfml.dir/game_state.cpp.s

CMakeFiles/sfml.dir/game_state.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/game_state.cpp.o.requires

CMakeFiles/sfml.dir/game_state.cpp.o.provides: CMakeFiles/sfml.dir/game_state.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/game_state.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/game_state.cpp.o.provides

CMakeFiles/sfml.dir/game_state.cpp.o.provides.build: CMakeFiles/sfml.dir/game_state.cpp.o


CMakeFiles/sfml.dir/menu_state.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/menu_state.cpp.o: menu_state.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/sfml.dir/menu_state.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/menu_state.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/menu_state.cpp

CMakeFiles/sfml.dir/menu_state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/menu_state.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/menu_state.cpp > CMakeFiles/sfml.dir/menu_state.cpp.i

CMakeFiles/sfml.dir/menu_state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/menu_state.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/menu_state.cpp -o CMakeFiles/sfml.dir/menu_state.cpp.s

CMakeFiles/sfml.dir/menu_state.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/menu_state.cpp.o.requires

CMakeFiles/sfml.dir/menu_state.cpp.o.provides: CMakeFiles/sfml.dir/menu_state.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/menu_state.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/menu_state.cpp.o.provides

CMakeFiles/sfml.dir/menu_state.cpp.o.provides.build: CMakeFiles/sfml.dir/menu_state.cpp.o


CMakeFiles/sfml.dir/object.cpp.o: CMakeFiles/sfml.dir/flags.make
CMakeFiles/sfml.dir/object.cpp.o: object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/sfml.dir/object.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sfml.dir/object.cpp.o -c /home/andmo435/Documents/TDP005/Projekt/object.cpp

CMakeFiles/sfml.dir/object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml.dir/object.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andmo435/Documents/TDP005/Projekt/object.cpp > CMakeFiles/sfml.dir/object.cpp.i

CMakeFiles/sfml.dir/object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml.dir/object.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andmo435/Documents/TDP005/Projekt/object.cpp -o CMakeFiles/sfml.dir/object.cpp.s

CMakeFiles/sfml.dir/object.cpp.o.requires:

.PHONY : CMakeFiles/sfml.dir/object.cpp.o.requires

CMakeFiles/sfml.dir/object.cpp.o.provides: CMakeFiles/sfml.dir/object.cpp.o.requires
	$(MAKE) -f CMakeFiles/sfml.dir/build.make CMakeFiles/sfml.dir/object.cpp.o.provides.build
.PHONY : CMakeFiles/sfml.dir/object.cpp.o.provides

CMakeFiles/sfml.dir/object.cpp.o.provides.build: CMakeFiles/sfml.dir/object.cpp.o


# Object files for target sfml
sfml_OBJECTS = \
"CMakeFiles/sfml.dir/sfml_test.cpp.o" \
"CMakeFiles/sfml.dir/car.cpp.o" \
"CMakeFiles/sfml.dir/collision.cpp.o" \
"CMakeFiles/sfml.dir/buff_debuff.cpp.o" \
"CMakeFiles/sfml.dir/bullet.cpp.o" \
"CMakeFiles/sfml.dir/game_field.cpp.o" \
"CMakeFiles/sfml.dir/score.cpp.o" \
"CMakeFiles/sfml.dir/game_state.cpp.o" \
"CMakeFiles/sfml.dir/menu_state.cpp.o" \
"CMakeFiles/sfml.dir/object.cpp.o"

# External object files for target sfml
sfml_EXTERNAL_OBJECTS =

sfml: CMakeFiles/sfml.dir/sfml_test.cpp.o
sfml: CMakeFiles/sfml.dir/car.cpp.o
sfml: CMakeFiles/sfml.dir/collision.cpp.o
sfml: CMakeFiles/sfml.dir/buff_debuff.cpp.o
sfml: CMakeFiles/sfml.dir/bullet.cpp.o
sfml: CMakeFiles/sfml.dir/game_field.cpp.o
sfml: CMakeFiles/sfml.dir/score.cpp.o
sfml: CMakeFiles/sfml.dir/game_state.cpp.o
sfml: CMakeFiles/sfml.dir/menu_state.cpp.o
sfml: CMakeFiles/sfml.dir/object.cpp.o
sfml: CMakeFiles/sfml.dir/build.make
sfml: CMakeFiles/sfml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andmo435/Documents/TDP005/Projekt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable sfml"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sfml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sfml.dir/build: sfml

.PHONY : CMakeFiles/sfml.dir/build

CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/sfml_test.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/car.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/collision.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/buff_debuff.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/bullet.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/game_field.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/score.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/game_state.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/menu_state.cpp.o.requires
CMakeFiles/sfml.dir/requires: CMakeFiles/sfml.dir/object.cpp.o.requires

.PHONY : CMakeFiles/sfml.dir/requires

CMakeFiles/sfml.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sfml.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sfml.dir/clean

CMakeFiles/sfml.dir/depend:
	cd /home/andmo435/Documents/TDP005/Projekt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andmo435/Documents/TDP005/Projekt /home/andmo435/Documents/TDP005/Projekt /home/andmo435/Documents/TDP005/Projekt /home/andmo435/Documents/TDP005/Projekt /home/andmo435/Documents/TDP005/Projekt/CMakeFiles/sfml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sfml.dir/depend
