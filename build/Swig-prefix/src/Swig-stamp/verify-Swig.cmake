# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz")
  message(FATAL_ERROR "File not found: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("82133dfa7bba75ff9ad98a7046be687c" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz'")

file("MD5" "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "82133dfa7bba75ff9ad98a7046be687c")
  message(FATAL_ERROR "error: MD5 hash of
  /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/swig-3.0.12.tar.gz
does not match expected value
  expected: '82133dfa7bba75ff9ad98a7046be687c'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
