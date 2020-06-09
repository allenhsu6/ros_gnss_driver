# Install script for directory: /home/xu/gnss_driver_ws/src/nmea_navsat_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/installspace/nmea_navsat_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nmea_navsat_driver/cmake" TYPE FILE FILES
    "/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/installspace/nmea_navsat_driverConfig.cmake"
    "/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/installspace/nmea_navsat_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nmea_navsat_driver" TYPE FILE FILES "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nmea_navsat_driver" TYPE PROGRAM FILES
    "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/scripts/nmea_serial_driver"
    "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/scripts/nmea_socket_driver"
    "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/scripts/nmea_topic_driver"
    "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/scripts/nmea_topic_serial_reader"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nmea_navsat_driver/launch" TYPE DIRECTORY FILES "/home/xu/gnss_driver_ws/src/nmea_navsat_driver/launch/" FILES_MATCHING REGEX "/[^/]*\\.launch$")
endif()

