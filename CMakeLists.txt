cmake_minimum_required(VERSION 3.40.0)

project(CMakeForImGui.test CXX)

find_package(CMakeForImGui CONFIG REQUIRED)

add_executable(example_null)
target_sources(example_null PRIVATE examples/example_null/main.cpp)
target_link_libraries(example_null PRIVATE Unofficial::DearImGui::imgui_core)

add_executable(example_allegro5)
target_sources(example_allegro5 PRIVATE examples/example_allegro5/main.cpp)
target_link_libraries(example_allegro5 PRIVATE Unofficial::DearImGui::imgui_backend_allegro5)

add_executable(example_glfw_opengl3)
target_sources(example_glfw_opengl3 PRIVATE examples/example_glfw_opengl3/main.cpp)
target_link_libraries(example_glfw_opengl3 PRIVATE Unofficial::DearImGui::imgui_backend_glfw Unofficial::DearImGui::imgui_backend_opengl3)

add_executable(example_glfw_opengl2)
target_sources(example_glfw_opengl2 PRIVATE examples/example_glfw_opengl2/main.cpp)
target_link_libraries(example_glfw_opengl2 PRIVATE Unofficial::DearImGui::imgui_backend_glfw Unofficial::DearImGui::imgui_backend_opengl2)

add_executable(example_glfw_vulkan)
target_sources(example_glfw_vulkan PRIVATE examples/example_glfw_vulkan/main.cpp)
target_link_libraries(example_glfw_vulkan PRIVATE Unofficial::DearImGui::imgui_backend_glfw Unofficial::DearImGui::imgui_backend_vulkan)

add_executable(example_glut_opengl2)
target_sources(example_glut_opengl2 PRIVATE examples/example_glut_opengl2/main.cpp)
target_link_libraries(example_glut_opengl2 PRIVATE Unofficial::DearImGui::imgui_backend_glut Unofficial::DearImGui::imgui_backend_opengl2)

add_executable(example_sdl2_opengl2)
target_sources(example_sdl2_opengl2 PRIVATE examples/example_sdl2_opengl2/main.cpp)
target_link_libraries(example_sdl2_opengl2 PRIVATE Unofficial::DearImGui::imgui_backend_sdl2 Unofficial::DearImGui::imgui_backend_opengl2)
target_compile_definitions(example_sdl2_opengl2 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_opengl3)
target_sources(example_sdl2_opengl3 PRIVATE examples/example_sdl2_opengl3/main.cpp)
target_link_libraries(example_sdl2_opengl3 PRIVATE Unofficial::DearImGui::imgui_backend_sdl2 Unofficial::DearImGui::imgui_backend_opengl3)
target_compile_definitions(example_sdl2_opengl3 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_vulkan)
target_sources(example_sdl2_vulkan PRIVATE examples/example_sdl2_vulkan/main.cpp)
target_link_libraries(example_sdl2_vulkan PRIVATE Unofficial::DearImGui::imgui_backend_sdl2 Unofficial::DearImGui::imgui_backend_vulkan)
target_compile_definitions(example_sdl2_vulkan PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl2_sdlrenderer2)
target_sources(example_sdl2_sdlrenderer2 PRIVATE examples/example_sdl2_sdlrenderer2/main.cpp)
target_link_libraries(example_sdl2_sdlrenderer2 PRIVATE Unofficial::DearImGui::imgui_backend_sdlrenderer2 Unofficial::DearImGui::imgui_backend_sdl2)
target_compile_definitions(example_sdl2_sdlrenderer2 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)

add_executable(example_sdl3_opengl3)
target_sources(example_sdl3_opengl3 PRIVATE examples/example_sdl3_opengl3/main.cpp)
target_link_libraries(example_sdl3_opengl3 PRIVATE Unofficial::DearImGui::imgui_backend_sdl3 Unofficial::DearImGui::imgui_backend_opengl3)

add_executable(example_sdl3_vulkan)
target_sources(example_sdl3_vulkan PRIVATE examples/example_sdl3_vulkan/main.cpp)
target_link_libraries(example_sdl3_vulkan PRIVATE Unofficial::DearImGui::imgui_backend_sdl3 Unofficial::DearImGui::imgui_backend_vulkan)

add_executable(example_sdl3_sdlrenderer3)
target_sources(example_sdl3_sdlrenderer3 PRIVATE examples/example_sdl3_sdlrenderer3/main.cpp)
target_link_libraries(example_sdl3_sdlrenderer3 PRIVATE Unofficial::DearImGui::imgui_backend_sdlrenderer3 Unofficial::DearImGui::imgui_backend_sdl3)

add_executable(example_sdl3_sdlgpu3)
target_sources(example_sdl3_sdlgpu3 PRIVATE examples/example_sdl3_sdlgpu3/main.cpp)
target_link_libraries(example_sdl3_sdlgpu3 PRIVATE Unofficial::DearImGui::imgui_backend_sdlgpu3 Unofficial::DearImGui::imgui_backend_sdl3)

if(WIN32)
  add_executable(example_win32_opengl3)
  target_sources(example_win32_opengl3 PRIVATE examples/example_win32_opengl3/main.cpp)
  target_link_libraries(example_win32_opengl3 PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_opengl3)

  add_executable(example_win32_directx9)
  target_sources(example_win32_directx9 PRIVATE examples/example_win32_directx9/main.cpp)
  target_link_libraries(example_win32_directx9 PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_dx9)

  add_executable(example_win32_directx10)
  target_sources(example_win32_directx10 PRIVATE examples/example_win32_directx10/main.cpp)
  target_link_libraries(example_win32_directx10 PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_dx10)

  add_executable(example_win32_directx11)
  target_sources(example_win32_directx11 PRIVATE examples/example_win32_directx11/main.cpp)
  target_link_libraries(example_win32_directx11 PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_dx11)

  add_executable(example_win32_directx12)
  target_sources(example_win32_directx12 PRIVATE examples/example_win32_directx12/main.cpp)
  target_link_libraries(example_win32_directx12 PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_dx12)

  add_executable(example_win32_vulkan)
  target_sources(example_win32_vulkan PRIVATE examples/example_win32_vulkan/main.cpp)
  target_link_libraries(example_win32_vulkan PRIVATE Unofficial::DearImGui::imgui_backend_win32 Unofficial::DearImGui::imgui_backend_vulkan)

  add_executable(example_sdl2_directx11)
  target_sources(example_sdl2_directx11 PRIVATE examples/example_sdl2_directx11/main.cpp)
  target_link_libraries(example_sdl2_directx11 PRIVATE Unofficial::DearImGui::imgui_backend_sdl2 Unofficial::DearImGui::imgui_backend_dx11)
  target_compile_definitions(example_sdl2_directx11 PRIVATE $<$<PLATFORM_ID:Windows>:SDL_MAIN_HANDLED>)
endif()
