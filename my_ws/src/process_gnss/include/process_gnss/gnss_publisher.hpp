//
// Created by xu on 2020/6/9.
//

#ifndef SRC_GNSS_PUBLISHER_HPP
#define SRC_GNSS_PUBLISHER_HPP
#include "process_gnss/gnss_data.hpp"
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
namespace nmea{
class GnssPublisher {
public:
  GnssPublisher(ros::NodeHandle& nh, const std::string& topic_name, std::string base_frame_id, std::string child_frame_id, std::size_t buff_size);
  GnssPublisher() = default;
  // 给我对应的gnssdata，我把它转换odometry后pub
  void Publish(GnssData& input_gnss_data);
  void UpdateGnss(GnssData& input_gnss_data);

private:
  ros::NodeHandle nh_;
  ros::Publisher pub_;
  std::string child_frame_id_;
  std::string base_frame_id_;
};
}



#endif //SRC_GNSS_PUBLISHER_HPP
