//
// Created by xu on 2020/6/9.
//

#ifndef SRC_GNSS_DATA_HPP
#define SRC_GNSS_DATA_HPP

#include <deque>
#include "Geocentric/LocalCartesian.hpp"
namespace nmea{
class GnssData {
public:
  void InitOriginPosition();
  void UpdateXYZ();

private:
  static GeographicLib::LocalCartesian geo_converter;
  static bool origin_position_inited;

public:
  double time = 0.0;
  double longitude = 0.0;
  double latitude = 0.0;
  double altitude = 0.0;
  double local_E = 0.0;
  double local_N = 0.0;
  double local_U = 0.0;
  int status = 0;
  int service = 0;
};
}

#endif //SRC_GNSS_DATA_HPP
