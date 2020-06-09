//
// Created by xu on 2020/6/9.
//

#include "../include/process_gnss/gnss_data.hpp"
#include <iostream>

namespace nmea{

void GnssData::InitOriginPosition(){
  geo_converter.Reset(latitude, longitude, altitude);
  origin_position_inited = true;
}
void GnssData::UpdateXYZ(){
  if (!origin_position_inited) {
    std::cerr << "GeoConverter has not set origin position";
  }
  geo_converter.Forward(latitude, longitude, altitude, local_E, local_N, local_U);
}

GeographicLib::LocalCartesian GnssData::geo_converter;
bool GnssData::origin_position_inited = false;
}