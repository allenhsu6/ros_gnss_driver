//
// Created by xu on 2020/6/8.
//

#ifndef SRC_GNSS_SUBSCRIBER_HPP
#define SRC_GNSS_SUBSCRIBER_HPP

#include <ros/ros.h>
#include <sensor_msgs/NavSatFix.h>
#include "Geocentric/LocalCartesian.hpp"
#include "process_gnss/gnss_data.hpp"
#include <deque>

namespace nmea{
class GnssSubscriber {
public:
  GnssSubscriber(ros::NodeHandle& nh, std::string topic_name, std::size_t buff_size);
  bool GetAllGnss(std::deque<GnssData>& output_gnss_buff);

private:
  void msg_callback(const sensor_msgs::NavSatFixConstPtr& input_msg);

private:
  ros::NodeHandle nh_;
  ros::Subscriber sub_;
  std::deque<GnssData> gnss_data_buff_;
};
}


#endif //SRC_GNSS_SUBSCRIBER_HPP
