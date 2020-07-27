//
// Created by xu on 2020/7/6.
//

#include "unicore/parse_sentence.hpp"
#include <boost/make_shared.hpp>

unicore::RawImuPtr ParseRawImu::ParseAscii(const novatel_gps_driver::NovatelSentence &sentence){
  unicore::RawImuPtr msg = boost::make_shared<unicore::RawImu>();
  bool valid = true;
  valid &= novatel_gps_driver::ParseUInt32(sentence.body[0], msg->week);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[1], msg->seconds_into_week);
  valid &= novatel_gps_driver::ParseUInt32(sentence.body[2], msg->imu_state);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[3], msg->z_accel_output);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[4], msg->y_accel_output);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[5], msg->x_accel_output);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[6], msg->z_gyro_output);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[7], msg->y_gyro_output);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[8], msg->x_gyro_output);

  msg->z_accel_output  = msg->z_accel_output * 100 * 400 / 2147483648;
  msg->y_accel_output  = msg->y_accel_output * 100 * 400 / 2147483648;
  msg->x_accel_output  = msg->x_accel_output * 100 * 400 / 2147483648;

  msg->z_gyro_output = msg->z_gyro_output * 2160 * 100 / 2147483648;
  msg->y_gyro_output = msg->y_gyro_output * 2160 * 100 / 2147483648;
  msg->x_gyro_output = msg->x_gyro_output * 2160 * 100 / 2147483648;

  if (!valid)
  {
    std::cerr << "xuzhi: rawimu log was invalid." << std::endl;
  }
  return msg;
}

novatel_gps_msgs::InspvaPtr ParseInspva::ParseAscii(const novatel_gps_driver::NovatelSentence &sentence) {
  novatel_gps_msgs::InspvaPtr msg = boost::make_shared<novatel_gps_msgs::Inspva>();

  bool valid = true;
  valid &= novatel_gps_driver::ParseUInt32(sentence.body[0], msg->week);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[1], msg->seconds);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[2], msg->latitude);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[3], msg->longitude);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[4], msg->height);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[5], msg->north_velocity);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[6], msg->east_velocity);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[7], msg->up_velocity);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[8], msg->roll);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[9], msg->pitch);
  valid &= novatel_gps_driver::ParseDouble(sentence.body[10], msg->azimuth);
  msg->status = sentence.body[11];

  if (!valid)
  {
    std::cerr << "xuzhi: inspva log was invalid." << std::endl;
  }
  return msg;
}
