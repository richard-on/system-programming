cmake_minimum_required(VERSION 3.20)
project(lab1_DNS C)

set(CMAKE_C_STANDARD 11)

add_executable(lab1_DNS main.c dns.h dns.c hashTable.c hashTable.h)
