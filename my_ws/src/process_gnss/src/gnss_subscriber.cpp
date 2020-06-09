//
// Created by xu on 2020/6/8.
//

#include "../include/process_gnss/gnss_subscriber.hpp"
namespace nmea{
GnssSubscriber::GnssSubscriber(ros::NodeHandle& nh, std::string topic_name, std::size_t buff_size):
nh_(nh){
  sub_ = nh_.subscribe(topic_name, buff_size, &GnssSubscriber::msg_callback, this);
}

bool GnssSubscriber::GetAllGnss(std::deque<GnssData>& output_gnss_buff){
  if (gnss_data_buff_.size() > 0) {
    output_gnss_buff.insert(output_gnss_buff.end(), gnss_data_buff_.begin(), gnss_data_buff_.end());
    gnss_data_buff_.clear();
  }
}

void GnssSubscriber::msg_callback(const sensor_msgs::NavSatFixConstPtr& input_msg){
  GnssData gnss_data;
  gnss_data.time = input_msg->header.stamp.toSec();
  gnss_data.latitude = input_msg->latitude;
  gnss_data.longitude = input_msg->longitude;
  gnss_data.altitude = input_msg->altitude;
  gnss_data.status = input_msg->status.status;
  gnss_data.service = input_msg->status.service;

  gnss_data_buff_.push_back(gnss_data);
}
}
