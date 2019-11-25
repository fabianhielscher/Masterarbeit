# Install script for directory: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDebugDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/lib/libitkgdcmCommon-4.13.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.13.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.13.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.13.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xHeadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13" TYPE FILE FILES
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmASN1.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmBase64.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmBoxRegion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.txx"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCAPICryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCAPICryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCommand.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDataEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDeflateStream.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDirectory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDummyValueGenerator.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmException.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFileNameEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilename.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilenameGenerator.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmLegacyMacro.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmMD5.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmObject.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLCryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLCryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLP7CryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLP7CryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmProgressEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmRegion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSHA1.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSmartPointer.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmStaticAssert.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmString.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSubject.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapCode.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.txx"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSystem.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTerminal.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTestDriver.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTesting.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTrace.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTypes.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmUnpacker12Bits.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmVersion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmWin32.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/zipstreamimpl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xHeadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13" TYPE FILE FILES
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmASN1.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmBase64.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmBoxRegion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.txx"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCAPICryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCAPICryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCommand.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDataEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDeflateStream.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDirectory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDummyValueGenerator.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmException.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFileNameEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilename.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilenameGenerator.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmLegacyMacro.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmMD5.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmObject.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLCryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLCryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLP7CryptoFactory.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmOpenSSLP7CryptographicMessageSyntax.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmProgressEvent.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmRegion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSHA1.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSmartPointer.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmStaticAssert.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmString.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSubject.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapCode.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.txx"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSystem.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTerminal.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTestDriver.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTesting.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTrace.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTypes.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmUnpacker12Bits.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmVersion.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmWin32.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/zipstreamimpl.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmConfigure.h"
    )
endif()

