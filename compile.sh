#!/usr/bin/env bash

set -x

rm -rf out
mkdir out

c++ -std=c++11 -o ./out/out.allegro5 ./examples/example_allegro5/main.cpp $(pkg-config --libs --cflags dearimgui)

c++ -std=c++11 -o ./out/out.glfw_opengl2 ./examples/example_glfw_opengl2/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.glfw_opengl3 ./examples/example_glfw_opengl3/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.glfw_vulkan  ./examples/example_glfw_vulkan/main.cpp $(pkg-config --libs --cflags dearimgui)

c++ -std=c++11 -o ./out/out.sdl2_opengl2 ./examples/example_sdl2_opengl2/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl2_opengl3 ./examples/example_sdl2_opengl3/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl2_vulkan  ./examples/example_sdl2_vulkan/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl2_sdlrenderer2 ./examples/example_sdl2_sdlrenderer2/main.cpp $(pkg-config --libs --cflags dearimgui)

c++ -std=c++11 -o ./out/out.sdl3_opengl3 ./examples/example_sdl3_opengl3/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl3_sdlgpu3 ./examples/example_sdl3_sdlgpu3/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl3_vulkan  ./examples/example_sdl3_vulkan/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.sdl3_sdlrenderer3 ./examples/example_sdl3_sdlrenderer3/main.cpp $(pkg-config --libs --cflags dearimgui)

c++ -std=c++11 -o ./out/out.glut.opengl2 ./examples/example_glut_opengl2/main.cpp $(pkg-config --libs --cflags dearimgui)
c++ -std=c++11 -o ./out/out.example_null ./examples/example_null/main.cpp $(pkg-config --libs --cflags dearimgui)
