execute_process(COMMAND "/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/xu/gnss_driver_ws/src/cmake-build-debug/nmea_navsat_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
