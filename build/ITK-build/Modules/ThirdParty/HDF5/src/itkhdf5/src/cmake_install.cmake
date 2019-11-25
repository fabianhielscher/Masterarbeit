# Install script for directory: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13/itkhdf5" TYPE FILE FILES
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/hdf5.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5api_adpt.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5public.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5version.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5overflow.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/itk_hdf5_mangle.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2pkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2public.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Edefin.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Einit.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epubgen.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eterm.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDcore.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDdirect.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDfamily.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDlog.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpi.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpio.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmulti.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDsec2.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDstdio.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oshared.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLextern.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpkg.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpublic.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/itk_hdf5_mangle.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5private.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Aprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2private.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5CSprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FLprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FOprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MFprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HPprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Iprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Pprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RCprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RSprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SLprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Sprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5STprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5TSprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5VMprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5WBprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zprivate.h"
    "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5win32defs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/lib/libitkhdf5.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a")
  endif()
endif()

