// Filename: DOMTYPES.h
//
// Description:
// Author: Damian Machtey
// Maintainer:
//
// Created: Mon Jul 25 11:51:24 2016 (-0500)
//
// Last-Updated: Wed Jul 27 15:11:37 2016 (-0500)
//           By: Damian Machtey
//     Update #: 29

// Change Log:
//
//
// Copyright (C) 2016 Damian Machtey
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
//
//

// Code:
#ifndef _MODTYPES_H_
#define _MODTYPES_H_

#include <string>

#define REPUBLISH_TIME 2*60*1000 // 2 minutes

namespace lighting {

  typedef unsigned int time_t;
  typedef unsigned int uint;

  typedef enum {
    LED,
    LIGTH,
    OUTLET,
    FAN,
    MOTOR,
    OTHER
  } p_device;

  class powered {
  public:
    int id;
    std::string name;
    std::string placed;
    double power;
    double voltage;
    uint n_circuits;
    p_device type;
  };


}
#endif //DOMTYPES_H_
//
// DOMTYPES.h ends here
