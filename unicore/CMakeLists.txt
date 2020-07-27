cmake_minimum_required(VERSION 2.8.3)
project(unicore)
add_definitions(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  sensor_msgs
  std_msgs
  message_generation
  novatel_gps_msgs
  swri_math_util
  swri_roscpp
  swri_serial_util
  swri_string_util
  )

find_package(Boost REQUIRED COMPONENTS system)

 add_message_files(
   FILES
   RawImu.msg
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )

catkin_package(
)

include_directories(
 include
  ${catkin_INCLUDE_DIRS}
)
link_directories(/opt/ros/kinetic/lib)

 add_executable(${PROJECT_NAME}_node test/test_parse.cpp src/parse_sentence.cpp src/msg_buffer.cpp
         src/unicore_message_extractor.cpp)
 add_dependencies(${PROJECT_NAME}_node ${catkin_EXPORTED_TARGETS})
 target_link_libraries(${PROJECT_NAME}_node
   ${catkin_LIBRARIES}
   ${Boost_LIBRARIES}
   novatel_gps_driver
   )
