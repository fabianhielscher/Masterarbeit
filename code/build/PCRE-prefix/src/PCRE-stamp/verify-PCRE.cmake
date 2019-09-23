# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz")
  message(FATAL_ERROR "File not found: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("890c808122bd90f398e6bc40ec862102" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz'")

file("MD5" "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "890c808122bd90f398e6bc40ec862102")
  message(FATAL_ERROR "error: MD5 hash of
  /Users/fabianhielscher/Dev/Masterarbeit/code/build/ExternalData/.ExternalSource/pcre-8.40.tar.gz
does not match expected value
  expected: '890c808122bd90f398e6bc40ec862102'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
