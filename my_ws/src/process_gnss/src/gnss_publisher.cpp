//
// Created by xu on 2020/6/9.
//

#include "../include/process_gnss/gnss_publisher.hpp"
#include <utility>

namespace nmea{
GnssPublisher::GnssPublisher(ros::NodeHandle &nh, const std::string& topic_name, std::string base_frame_id, std::string child_frame_id, std::size_t buff_size):
nh_(nh), child_frame_id_(std::move(child_frame_id)), base_frame_id_(std::move(base_frame_id)){
  pub_ = nh_.advertise<nav_msgs::Odometry>(topic_name, buff_size);
}

void GnssPublisher::Publish(GnssData &input_gnss_data) {
  UpdateGnss(input_gnss_data);

  nav_msgs::OdometryPtr gnss_ptr(new nav_msgs::Odometry());
  ros::Time ros_time(input_gnss_data.time);
  gnss_ptr->header.stamp = ros_time;
  gnss_ptr->header.frame_id = base_frame_id_;
  gnss_ptr->child_frame_id = child_frame_id_;

  gnss_ptr->pose.pose.position.x = input_gnss_data.local_E;
  gnss_ptr->pose.pose.position.y = input_gnss_data.local_N;
  gnss_ptr->pose.pose.position.z = input_gnss_data.local_U;

  std::cout << "gnss_global: " << input_gnss_data.altitude << " "
      << input_gnss_data.latitude << " " << input_gnss_data.longitude << std::endl;

  std::cout << "gnss_ENU: " << input_gnss_data.local_E << " "
            << input_gnss_data.local_N << " " << input_gnss_data.local_U << std::endl;

  pub_.publish(*gnss_ptr);
}

void GnssPublisher::UpdateGnss(GnssData &input_gnss_data) {
  static bool gnss_inited = false;
  if (!gnss_inited) {
    input_gnss_data.InitOriginPosition();
    gnss_inited = true;
  }
  input_gnss_data.UpdateXYZ();
}
}