#ifndef DYNAMIXEL_INTERFACE_H
#define DYNAMIXEL_INTERFACE_H
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include "msg_pkg/msg_data.h"
//#include "msg_pkg/srv_data.h"

#include <stdlib.h>
#include <stdio.h>
#include <cstdlib>

#include <dynamixel_sdk/dynamixel_sdk.h>                                  // Uses DYNAMIXEL SDK library

class dynamixel_interface
{
public:
  dynamixel_interface(ros::NodeHandle & n_);
  ~dynamixel_interface(){}

//  void KeyboardInputCallBack(const geometry_msgs::Twist::ConstPtr& msg);
private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_;
  msg_pkg::msg_data msg_;
//  ros::ServiceServer serv_;
//  bool KeyboardInput(msg_pkg::srv_data::Request  &req,
//                     msg_pkg::srv_data::Response &res);
};
#endif // DYNAMIXEL_INTERFACE_H
