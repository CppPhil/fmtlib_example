cmake_minimum_required(VERSION 3.14)

project(testProj VERSION 1.0.0 LANGUAGES CXX)

add_executable(MyExe main.cpp)

add_subdirectory(fmtlib)

target_link_libraries(MyExe PRIVATE fmt::fmt)

