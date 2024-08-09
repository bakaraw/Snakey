cmake_minimum_required(VERSION 3.28)
add_subdirectory(lib/glfw)
add_subdirectory(lib/glm)
project(snaky)

set(CMAKE_CXX_STANDARD 17)

# Add ImGui source files
set(IMGUI_SOURCES
    include/imgui/imgui.cpp
    include/imgui/imgui_draw.cpp
    include/imgui/imgui_widgets.cpp
    include/imgui/imgui_tables.cpp
    include/imgui/imgui_demo.cpp
    include/imgui/imgui_impl_glfw.cpp
    include/imgui/imgui_impl_opengl3.cpp
)

# Add executable with ImGui source files
add_executable(snaky src/main.cpp src/glad.c src/graphics/Shader.cpp src/graphics/Camera.cpp src/entities/Cube.cpp src/entities/Score.cpp src/entities/Player.cpp src/entities/Body.cpp src/utilities/DeltaTime.cpp ${IMGUI_SOURCES})

set(ASSETS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/assets)
target_compile_definitions(${PROJECT_NAME} PRIVATE ASSETS_DIRECTORY="${ASSETS_DIRECTORY}")

add_custom_target(copy_assets
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/assets ${CMAKE_CURRENT_BINARY_DIR}/assets
        COMMENT "Copying assets to build directory")

add_dependencies(${PROJECT_NAME} copy_assets)
target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES})
target_link_libraries(${PROJECT_NAME} glm ${GLM_LIBRARIES})
include_directories(${PROJECT_NAME} PRIVATE include)
