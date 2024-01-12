project(lab4)
cmake_minimum_required(VERSION 3.1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/dist)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/dist)
set(CMAKE_GENERATOR "Ninja")
add_library(lab4_lib SHARED calculator.cpp)
add_executable(lab4 main.cpp)
target_link_libraries(lab4 lab4_lib)
