# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/laighton/CLionProjects/snaky

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/laighton/CLionProjects/snaky/out/Debug

# Include any dependencies generated for this target.
include CMakeFiles/snaky.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/snaky.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/snaky.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snaky.dir/flags.make

CMakeFiles/snaky.dir/src/main.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/main.cpp.o: /home/laighton/CLionProjects/snaky/src/main.cpp
CMakeFiles/snaky.dir/src/main.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/snaky.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/main.cpp.o -MF CMakeFiles/snaky.dir/src/main.cpp.o.d -o CMakeFiles/snaky.dir/src/main.cpp.o -c /home/laighton/CLionProjects/snaky/src/main.cpp

CMakeFiles/snaky.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/main.cpp > CMakeFiles/snaky.dir/src/main.cpp.i

CMakeFiles/snaky.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/main.cpp -o CMakeFiles/snaky.dir/src/main.cpp.s

CMakeFiles/snaky.dir/src/glad.c.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/glad.c.o: /home/laighton/CLionProjects/snaky/src/glad.c
CMakeFiles/snaky.dir/src/glad.c.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/snaky.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/glad.c.o -MF CMakeFiles/snaky.dir/src/glad.c.o.d -o CMakeFiles/snaky.dir/src/glad.c.o -c /home/laighton/CLionProjects/snaky/src/glad.c

CMakeFiles/snaky.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/snaky.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/laighton/CLionProjects/snaky/src/glad.c > CMakeFiles/snaky.dir/src/glad.c.i

CMakeFiles/snaky.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/snaky.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/laighton/CLionProjects/snaky/src/glad.c -o CMakeFiles/snaky.dir/src/glad.c.s

CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o: /home/laighton/CLionProjects/snaky/src/graphics/Shader.cpp
CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o -MF CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o.d -o CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o -c /home/laighton/CLionProjects/snaky/src/graphics/Shader.cpp

CMakeFiles/snaky.dir/src/graphics/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/graphics/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/graphics/Shader.cpp > CMakeFiles/snaky.dir/src/graphics/Shader.cpp.i

CMakeFiles/snaky.dir/src/graphics/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/graphics/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/graphics/Shader.cpp -o CMakeFiles/snaky.dir/src/graphics/Shader.cpp.s

CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o: /home/laighton/CLionProjects/snaky/src/graphics/Camera.cpp
CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o -MF CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o.d -o CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o -c /home/laighton/CLionProjects/snaky/src/graphics/Camera.cpp

CMakeFiles/snaky.dir/src/graphics/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/graphics/Camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/graphics/Camera.cpp > CMakeFiles/snaky.dir/src/graphics/Camera.cpp.i

CMakeFiles/snaky.dir/src/graphics/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/graphics/Camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/graphics/Camera.cpp -o CMakeFiles/snaky.dir/src/graphics/Camera.cpp.s

CMakeFiles/snaky.dir/src/entities/Cube.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/entities/Cube.cpp.o: /home/laighton/CLionProjects/snaky/src/entities/Cube.cpp
CMakeFiles/snaky.dir/src/entities/Cube.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/snaky.dir/src/entities/Cube.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/entities/Cube.cpp.o -MF CMakeFiles/snaky.dir/src/entities/Cube.cpp.o.d -o CMakeFiles/snaky.dir/src/entities/Cube.cpp.o -c /home/laighton/CLionProjects/snaky/src/entities/Cube.cpp

CMakeFiles/snaky.dir/src/entities/Cube.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/entities/Cube.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/entities/Cube.cpp > CMakeFiles/snaky.dir/src/entities/Cube.cpp.i

CMakeFiles/snaky.dir/src/entities/Cube.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/entities/Cube.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/entities/Cube.cpp -o CMakeFiles/snaky.dir/src/entities/Cube.cpp.s

CMakeFiles/snaky.dir/src/entities/Score.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/entities/Score.cpp.o: /home/laighton/CLionProjects/snaky/src/entities/Score.cpp
CMakeFiles/snaky.dir/src/entities/Score.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/snaky.dir/src/entities/Score.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/entities/Score.cpp.o -MF CMakeFiles/snaky.dir/src/entities/Score.cpp.o.d -o CMakeFiles/snaky.dir/src/entities/Score.cpp.o -c /home/laighton/CLionProjects/snaky/src/entities/Score.cpp

CMakeFiles/snaky.dir/src/entities/Score.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/entities/Score.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/entities/Score.cpp > CMakeFiles/snaky.dir/src/entities/Score.cpp.i

CMakeFiles/snaky.dir/src/entities/Score.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/entities/Score.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/entities/Score.cpp -o CMakeFiles/snaky.dir/src/entities/Score.cpp.s

CMakeFiles/snaky.dir/src/entities/Player.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/entities/Player.cpp.o: /home/laighton/CLionProjects/snaky/src/entities/Player.cpp
CMakeFiles/snaky.dir/src/entities/Player.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/snaky.dir/src/entities/Player.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/entities/Player.cpp.o -MF CMakeFiles/snaky.dir/src/entities/Player.cpp.o.d -o CMakeFiles/snaky.dir/src/entities/Player.cpp.o -c /home/laighton/CLionProjects/snaky/src/entities/Player.cpp

CMakeFiles/snaky.dir/src/entities/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/entities/Player.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/entities/Player.cpp > CMakeFiles/snaky.dir/src/entities/Player.cpp.i

CMakeFiles/snaky.dir/src/entities/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/entities/Player.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/entities/Player.cpp -o CMakeFiles/snaky.dir/src/entities/Player.cpp.s

CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o: /home/laighton/CLionProjects/snaky/src/utilities/DeltaTime.cpp
CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o -MF CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o.d -o CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o -c /home/laighton/CLionProjects/snaky/src/utilities/DeltaTime.cpp

CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/src/utilities/DeltaTime.cpp > CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.i

CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/src/utilities/DeltaTime.cpp -o CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui.cpp
CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui.cpp

CMakeFiles/snaky.dir/include/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui.cpp > CMakeFiles/snaky.dir/include/imgui/imgui.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_draw.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_draw.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_draw.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_draw.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_widgets.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_widgets.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_widgets.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_widgets.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_tables.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_tables.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_tables.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_tables.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_demo.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_demo.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_demo.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_demo.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_glfw.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_glfw.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_glfw.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_glfw.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/snaky.dir/flags.make
CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o: /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_opengl3.cpp
CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/snaky.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o -c /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_opengl3.cpp

CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_opengl3.cpp > CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laighton/CLionProjects/snaky/include/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.s

# Object files for target snaky
snaky_OBJECTS = \
"CMakeFiles/snaky.dir/src/main.cpp.o" \
"CMakeFiles/snaky.dir/src/glad.c.o" \
"CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o" \
"CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o" \
"CMakeFiles/snaky.dir/src/entities/Cube.cpp.o" \
"CMakeFiles/snaky.dir/src/entities/Score.cpp.o" \
"CMakeFiles/snaky.dir/src/entities/Player.cpp.o" \
"CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o"

# External object files for target snaky
snaky_EXTERNAL_OBJECTS =

snaky: CMakeFiles/snaky.dir/src/main.cpp.o
snaky: CMakeFiles/snaky.dir/src/glad.c.o
snaky: CMakeFiles/snaky.dir/src/graphics/Shader.cpp.o
snaky: CMakeFiles/snaky.dir/src/graphics/Camera.cpp.o
snaky: CMakeFiles/snaky.dir/src/entities/Cube.cpp.o
snaky: CMakeFiles/snaky.dir/src/entities/Score.cpp.o
snaky: CMakeFiles/snaky.dir/src/entities/Player.cpp.o
snaky: CMakeFiles/snaky.dir/src/utilities/DeltaTime.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_draw.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_widgets.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_tables.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_demo.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_impl_glfw.cpp.o
snaky: CMakeFiles/snaky.dir/include/imgui/imgui_impl_opengl3.cpp.o
snaky: CMakeFiles/snaky.dir/build.make
snaky: lib/glfw/src/libglfw3.a
snaky: lib/glm/glm/libglm.a
snaky: /usr/lib/librt.a
snaky: /usr/lib/libm.so
snaky: CMakeFiles/snaky.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable snaky"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snaky.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snaky.dir/build: snaky
.PHONY : CMakeFiles/snaky.dir/build

CMakeFiles/snaky.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snaky.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snaky.dir/clean

CMakeFiles/snaky.dir/depend:
	cd /home/laighton/CLionProjects/snaky/out/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/laighton/CLionProjects/snaky /home/laighton/CLionProjects/snaky /home/laighton/CLionProjects/snaky/out/Debug /home/laighton/CLionProjects/snaky/out/Debug /home/laighton/CLionProjects/snaky/out/Debug/CMakeFiles/snaky.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/snaky.dir/depend

