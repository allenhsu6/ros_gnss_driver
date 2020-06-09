//
// Created by xu on 2020/6/8.
//
#include "process_gnss/gnss_data.hpp"
#include "process_gnss/gnss_publisher.hpp"
#include "process_gnss/gnss_subscriber.hpp"
#include <ros/ros.h>
#include <deque>
using namespace nmea;
int main(int argc, char* argv[]){

  ros::init(argc, argv, "show_gps");
  ros::NodeHandle nh;

  std::shared_ptr<GnssSubscriber> gnss_sub_ptr = std::make_shared<GnssSubscriber>(nh, "/fix", 10000);
  std::shared_ptr<GnssPublisher> gnss_pub_ptr = std::make_shared<GnssPublisher>(nh, "/local_gnss", "/world", "/gps", 1000);

  GnssData current_gnss_data;
  std::deque<GnssData> gnss_data_buff;
  while (ros::ok()){
    ros::spinOnce();
    gnss_sub_ptr->GetAllGnss(gnss_data_buff);
    while (!gnss_data_buff.empty()){
      current_gnss_data = gnss_data_buff.front();
      gnss_data_buff.pop_front();
      gnss_pub_ptr->Publish(current_gnss_data);
    }
  }
  return 0;
}

