cmake_minimum_required(VERSION 3.15)
project(Bank_Systems)

set(CMAKE_CXX_STANDARD 14)

add_executable(Bank_Systems main.cpp Record.cpp Record.h System.cpp System.h Account.cpp Account.h)