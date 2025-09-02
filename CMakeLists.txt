cmake_minimum_required(VERSION 4.0.0)

project(
  CMakeForImGui.test
  DESCRIPTION "Examples folder of the Dear ImGui configured by CMake build script support, the CMakeForImGui"
  HOMEPAGE_URL "https://github.com/adembudak/CMakeForImGui.test"
  LANGUAGES CXX)

find_package(DearImGui CONFIG REQUIRED)

add_executable(example_null)
target_sources(example_null PRIVATE examples/example_null/main.cpp)
target_link_libraries(example_null PRIVATE ImGui::imgui_core)

add_executable(example_allegro5)
target_sources(example_allegro5 PRIVATE examples/example_allegro5/main.cpp)
target_link_libraries(example_allegro5 PRIVATE ImGui::imgui_backend_allegro5)
target_link_libraries(example_allegro5 PRIVATE "$<$<PLATFORM_ID:Darwin>:-framework OpenGL -framework Carbon -framework ApplicationServices>")

add_executable(example_glfw_opengl3)
target_sources(example_glfw_opengl3 PRIVATE examples/example_glfw_opengl3/main.cpp)
target_link_libraries(example_glfw_opengl3 PRIVATE ImGui::imgui_backend_glfw ImGui::imgui_backend_opengl3)

add_executable(example_glfw_opengl2)
target_sources(example_glfw_opengl2 PRIVATE examples/example_glfw_opengl2/main.cpp)
target_link_libraries(example_glfw_opengl2 PRIVATE ImGui::imgui_backend_glfw ImGui::imgui_backend_opengl2)

add_executable(example_glfw_vulkan)
target_sources(example_glfw_vulkan PRIVATE examples/example_glfw_vulkan/main.cpp)
target_link_libraries(example_glfw_vulkan PRIVATE ImGui::imgui_backend_glfw ImGui::imgui_backend_vulkan)

add_executable(example_glut_opengl2)
target_sources(example_glut_opengl2 PRIVATE examples/example_glut_opengl2/main.cpp)
target_link_libraries(example_glut_opengl2 PRIVATE ImGui::imgui_backend_glut ImGui::imgui_backend_opengl2)

add_executable(example_sdl2_opengl2)
target_sources(example_sdl2_opengl2 PRIVATE examples/example_sdl2_opengl2/main.cpp)
target_link_libraries(example_sdl2_opengl2 PRIVATE ImGui::imgui_backend_sdl2 ImGui::imgui_backend_opengl2)
target_compile_definitions(example_sdl2_opengl2 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_opengl3)
target_sources(example_sdl2_opengl3 PRIVATE examples/example_sdl2_opengl3/main.cpp)
target_link_libraries(example_sdl2_opengl3 PRIVATE ImGui::imgui_backend_sdl2 ImGui::imgui_backend_opengl3)
target_compile_definitions(example_sdl2_opengl3 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_vulkan)
target_sources(example_sdl2_vulkan PRIVATE examples/example_sdl2_vulkan/main.cpp)
target_link_libraries(example_sdl2_vulkan PRIVATE ImGui::imgui_backend_sdl2 ImGui::imgui_backend_vulkan)
target_compile_definitions(example_sdl2_vulkan PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_sdlrenderer2)
target_sources(example_sdl2_sdlrenderer2 PRIVATE examples/example_sdl2_sdlrenderer2/main.cpp)
target_link_libraries(example_sdl2_sdlrenderer2 PRIVATE ImGui::imgui_backend_sdlrenderer2 ImGui::imgui_backend_sdl2)
target_compile_definitions(example_sdl2_sdlrenderer2 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl3_opengl3)
target_sources(example_sdl3_opengl3 PRIVATE examples/example_sdl3_opengl3/main.cpp)
target_link_libraries(example_sdl3_opengl3 PRIVATE ImGui::imgui_backend_sdl3 ImGui::imgui_backend_opengl3)

add_executable(example_sdl3_vulkan)
target_sources(example_sdl3_vulkan PRIVATE examples/example_sdl3_vulkan/main.cpp)
target_link_libraries(example_sdl3_vulkan PRIVATE ImGui::imgui_backend_sdl3 ImGui::imgui_backend_vulkan)

add_executable(example_sdl3_sdlrenderer3)
target_sources(example_sdl3_sdlrenderer3 PRIVATE examples/example_sdl3_sdlrenderer3/main.cpp)
target_link_libraries(example_sdl3_sdlrenderer3 PRIVATE ImGui::imgui_backend_sdlrenderer3 ImGui::imgui_backend_sdl3)

add_executable(example_sdl3_sdlgpu3)
target_sources(example_sdl3_sdlgpu3 PRIVATE examples/example_sdl3_sdlgpu3/main.cpp)
target_link_libraries(example_sdl3_sdlgpu3 PRIVATE ImGui::imgui_backend_sdlgpu3 ImGui::imgui_backend_sdl3)

if(WIN32)
  add_executable(example_win32_opengl3)
  target_sources(example_win32_opengl3 PRIVATE examples/example_win32_opengl3/main.cpp)
  target_link_libraries(example_win32_opengl3 PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_opengl3)

  add_executable(example_win32_directx9)
  target_sources(example_win32_directx9 PRIVATE examples/example_win32_directx9/main.cpp)
  target_link_libraries(example_win32_directx9 PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_dx9)

  add_executable(example_win32_directx10)
  target_sources(example_win32_directx10 PRIVATE examples/example_win32_directx10/main.cpp)
  target_link_libraries(example_win32_directx10 PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_dx10)

  add_executable(example_win32_directx11)
  target_sources(example_win32_directx11 PRIVATE examples/example_win32_directx11/main.cpp)
  target_link_libraries(example_win32_directx11 PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_dx11)

  add_executable(example_win32_directx12)
  target_sources(example_win32_directx12 PRIVATE examples/example_win32_directx12/main.cpp)
  target_link_libraries(example_win32_directx12 PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_dx12)

  add_executable(example_win32_vulkan)
  target_sources(example_win32_vulkan PRIVATE examples/example_win32_vulkan/main.cpp)
  target_link_libraries(example_win32_vulkan PRIVATE ImGui::imgui_backend_win32 ImGui::imgui_backend_vulkan)

  add_executable(example_sdl2_directx11)
  target_sources(example_sdl2_directx11 PRIVATE examples/example_sdl2_directx11/main.cpp)
  target_link_libraries(example_sdl2_directx11 PRIVATE ImGui::imgui_backend_sdl2 ImGui::imgui_backend_dx11)
  target_compile_definitions(example_sdl2_directx11 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)
endif()

if(APPLE)
  add_executable(example_apple_opengl2)
  target_sources(example_apple_opengl2 PRIVATE examples/example_apple_opengl2/main.mm)
  target_link_libraries(example_apple_opengl2 PRIVATE ImGui::imgui_backend_osx ImGui::imgui_backend_opengl2)

  add_executable(example_apple_metal)
  target_sources(example_apple_metal PRIVATE examples/example_apple_metal/main.mm)
  target_link_libraries(example_apple_metal PRIVATE ImGui::imgui_backend_osx ImGui::imgui_backend_metal)

  add_executable(example_sdl2_metal)
  target_sources(example_sdl2_metal PRIVATE examples/example_sdl2_metal/main.mm)
  target_link_libraries(example_sdl2_metal PRIVATE ImGui::imgui_backend_sdl2 ImGui::imgui_backend_metal)

  add_executable(example_sdl3_metal)
  target_sources(example_sdl3_metal PRIVATE examples/example_sdl3_metal/main.mm)
  target_link_libraries(example_sdl3_metal PRIVATE ImGui::imgui_backend_sdl3 ImGui::imgui_backend_metal)

  add_executable(example_glfw_metal)
  target_sources(example_glfw_metal PRIVATE examples/example_glfw_metal/main.mm)
  target_link_libraries(example_glfw_metal PRIVATE ImGui::imgui_backend_glfw ImGui::imgui_backend_metal)
  target_link_libraries(example_glfw_metal PRIVATE "-framework QuartzCore")
endif()
