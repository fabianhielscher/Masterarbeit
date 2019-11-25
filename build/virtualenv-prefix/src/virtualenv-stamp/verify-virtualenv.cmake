# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz")
  message(FATAL_ERROR "File not found: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("44e19f4134906fe2d75124427dc9b716" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz'")

file("MD5" "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "44e19f4134906fe2d75124427dc9b716")
  message(FATAL_ERROR "error: MD5 hash of
  /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/virtualenv-15.1.0.tar.gz
does not match expected value
  expected: '44e19f4134906fe2d75124427dc9b716'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
