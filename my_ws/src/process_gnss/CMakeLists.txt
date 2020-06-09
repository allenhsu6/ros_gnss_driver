cmake_minimum_required(VERSION 2.8.3)
project(process_gnss)

SET(CMAKE_BUILD_TYPE "Release")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
add_compile_options(-std=c++11)
add_definitions(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES beginner_tutorials
  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)
include_directories(
 include
  ${catkin_INCLUDE_DIRS}
)
set(ALL_TARGET_LIBRARIES "")
include(cmake/geographic.cmake)

add_executable(parse_gnss_node src/apps/parse_gnss_node.cpp src/gnss_data.cpp src/gnss_publisher.cpp src/gnss_subscriber.cpp)
target_link_libraries(parse_gnss_node ${catkin_LIBRARIES} ${ALL_TARGET_LIBRARIES})

