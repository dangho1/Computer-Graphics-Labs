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
CMAKE_SOURCE_DIR = /home/dangho/gltf_viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dangho/gltf_viewer/build

# Include any dependencies generated for this target.
include CMakeFiles/model_viewer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/model_viewer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/model_viewer.dir/flags.make

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o: ../src/cg_trackball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o -c /home/dangho/gltf_viewer/src/cg_trackball.cpp

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/cg_trackball.cpp > CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.i

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/cg_trackball.cpp -o CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.s

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.requires

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.provides: CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.provides

CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o


CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o: ../src/cg_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o -c /home/dangho/gltf_viewer/src/cg_utils.cpp

CMakeFiles/model_viewer.dir/src/cg_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/cg_utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/cg_utils.cpp > CMakeFiles/model_viewer.dir/src/cg_utils.cpp.i

CMakeFiles/model_viewer.dir/src/cg_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/cg_utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/cg_utils.cpp -o CMakeFiles/model_viewer.dir/src/cg_utils.cpp.s

CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.requires

CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.provides: CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.provides

CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o


CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o: ../src/gltf_io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o -c /home/dangho/gltf_viewer/src/gltf_io.cpp

CMakeFiles/model_viewer.dir/src/gltf_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/gltf_io.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/gltf_io.cpp > CMakeFiles/model_viewer.dir/src/gltf_io.cpp.i

CMakeFiles/model_viewer.dir/src/gltf_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/gltf_io.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/gltf_io.cpp -o CMakeFiles/model_viewer.dir/src/gltf_io.cpp.s

CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.requires

CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.provides: CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.provides

CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o


CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o: ../src/gltf_render.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o -c /home/dangho/gltf_viewer/src/gltf_render.cpp

CMakeFiles/model_viewer.dir/src/gltf_render.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/gltf_render.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/gltf_render.cpp > CMakeFiles/model_viewer.dir/src/gltf_render.cpp.i

CMakeFiles/model_viewer.dir/src/gltf_render.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/gltf_render.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/gltf_render.cpp -o CMakeFiles/model_viewer.dir/src/gltf_render.cpp.s

CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.requires

CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.provides: CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.provides

CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o


CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o: ../src/gltf_scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o -c /home/dangho/gltf_viewer/src/gltf_scene.cpp

CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/gltf_scene.cpp > CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.i

CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/gltf_scene.cpp -o CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.s

CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.requires

CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.provides: CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.provides

CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o


CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o: ../src/model_viewer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o -c /home/dangho/gltf_viewer/src/model_viewer.cpp

CMakeFiles/model_viewer.dir/src/model_viewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/src/model_viewer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/src/model_viewer.cpp > CMakeFiles/model_viewer.dir/src/model_viewer.cpp.i

CMakeFiles/model_viewer.dir/src/model_viewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/src/model_viewer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/src/model_viewer.cpp -o CMakeFiles/model_viewer.dir/src/model_viewer.cpp.s

CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.requires

CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.provides: CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.provides

CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.provides.build: CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o


CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o: ../external/gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o   -c /home/dangho/gltf_viewer/external/gl3w/src/gl3w.c

CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dangho/gltf_viewer/external/gl3w/src/gl3w.c > CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.i

CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dangho/gltf_viewer/external/gl3w/src/gl3w.c -o CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.s

CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.requires

CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.provides: CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.provides

CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.provides.build: CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o


CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o: ../external/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o -c /home/dangho/gltf_viewer/external/imgui/imgui.cpp

CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/imgui.cpp > CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/imgui.cpp -o CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o


CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o: ../external/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o -c /home/dangho/gltf_viewer/external/imgui/imgui_demo.cpp

CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/imgui_demo.cpp > CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/imgui_demo.cpp -o CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o


CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o: ../external/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o -c /home/dangho/gltf_viewer/external/imgui/imgui_draw.cpp

CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/imgui_draw.cpp > CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/imgui_draw.cpp -o CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o


CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o: ../external/imgui/imgui_widgets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o -c /home/dangho/gltf_viewer/external/imgui/imgui_widgets.cpp

CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/imgui_widgets.cpp > CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/imgui_widgets.cpp -o CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o


CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o: ../external/imgui/examples/imgui_impl_glfw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o -c /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_glfw.cpp

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_glfw.cpp > CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_glfw.cpp -o CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o


CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o: CMakeFiles/model_viewer.dir/flags.make
CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o: ../external/imgui/examples/imgui_impl_opengl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o -c /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_opengl3.cpp

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_opengl3.cpp > CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.i

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dangho/gltf_viewer/external/imgui/examples/imgui_impl_opengl3.cpp -o CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.s

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.requires:

.PHONY : CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.requires

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.provides: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.requires
	$(MAKE) -f CMakeFiles/model_viewer.dir/build.make CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.provides.build
.PHONY : CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.provides

CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.provides.build: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o


# Object files for target model_viewer
model_viewer_OBJECTS = \
"CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o" \
"CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o" \
"CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o" \
"CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o" \
"CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o" \
"CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o" \
"CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o" \
"CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o" \
"CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o" \
"CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o" \
"CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o" \
"CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o"

# External object files for target model_viewer
model_viewer_EXTERNAL_OBJECTS =

model_viewer: CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o
model_viewer: CMakeFiles/model_viewer.dir/build.make
model_viewer: glfw/src/libglfw3.a
model_viewer: /usr/lib/x86_64-linux-gnu/libGL.so
model_viewer: /usr/lib/x86_64-linux-gnu/libGLU.so
model_viewer: /usr/lib/x86_64-linux-gnu/librt.so
model_viewer: /usr/lib/x86_64-linux-gnu/libm.so
model_viewer: /usr/lib/x86_64-linux-gnu/libX11.so
model_viewer: CMakeFiles/model_viewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dangho/gltf_viewer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable model_viewer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/model_viewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/model_viewer.dir/build: model_viewer

.PHONY : CMakeFiles/model_viewer.dir/build

CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/cg_trackball.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/cg_utils.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/gltf_io.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/gltf_render.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/gltf_scene.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/src/model_viewer.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/gl3w/src/gl3w.c.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/imgui.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/imgui_demo.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/imgui_draw.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/imgui_widgets.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_glfw.cpp.o.requires
CMakeFiles/model_viewer.dir/requires: CMakeFiles/model_viewer.dir/external/imgui/examples/imgui_impl_opengl3.cpp.o.requires

.PHONY : CMakeFiles/model_viewer.dir/requires

CMakeFiles/model_viewer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/model_viewer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/model_viewer.dir/clean

CMakeFiles/model_viewer.dir/depend:
	cd /home/dangho/gltf_viewer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dangho/gltf_viewer /home/dangho/gltf_viewer /home/dangho/gltf_viewer/build /home/dangho/gltf_viewer/build /home/dangho/gltf_viewer/build/CMakeFiles/model_viewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/model_viewer.dir/depend

