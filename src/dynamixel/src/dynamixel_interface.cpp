#include "../include/dynamixel/dynamixel_interface.h"

dynamixel_interface::dynamixel_interface(ros::NodeHandle & n_)
{
  //퍼블리쉬 할 토픽 선언
  //pub_ = n_.advertise<msg_pkg::msg_data>("/KeyboardOutput", 100);

  //섭스크라이브 할 토픽 선언
  //sub_ = n_.subscribe("/cmd_vel", 1, &dynamixel_interface::KeyboardInputCallBack, this);
  //serv_ = n_.advertiseService("/keyboard_input", &dynamixel_interface::KeyboardInput, this);
}

/*void dynamixel_interface::KeyboardInputCallBack(const geometry_msgs::Twist::ConstPtr& msg)
{
  msg_.f64_linear_x = msg->linear.x;
  msg_.f64_linear_y = msg->linear.y;
  msg_.f64_linear_z = msg->linear.z;

  msg_.f64_angular_x = msg->angular.x;
  msg_.f64_angular_x = msg->angular.y;
  msg_.f64_angular_x = msg->angular.z;

  pub_.publish(msg_);
  ROS_INFO("Linear x : [%f]", msg->linear.x);
  ROS_INFO("Linear y : [%f]", msg->linear.y);
  ROS_INFO("Linear z : [%f]", msg->linear.z);
  ROS_INFO("Angular x : [%f]", msg->angular.x);
  ROS_INFO("Angular y : [%f]", msg->angular.y);
  ROS_INFO("Angular z : [%f]", msg->angular.z);
}*/

/*bool dynamixel_interface::KeyboardInput(msg_pkg::srv_data::Request  &req,
                   msg_pkg::srv_data::Response &res)
{
  res.linear_x_result = req.linear_x;
  res.linear_y_result = req.linear_y;
  res.linear_z_result = req.linear_z;

  res.angular_z_result = req.angular_z;
  res.angular_z_result = req.angular_z;
  res.angular_z_result = req.angular_z;

  ROS_INFO("request: lx=[%3f], ly=[%3f], lz=[%3f]", req.linear_x, req.linear_y, req.linear_z);
  ROS_INFO("request: ax=[%3f], ay=[%3f], az=[%3f]", req.angular_x, req.angular_y, req.angular_z);
  ROS_INFO("sending back response: lx=[%3f], ly=[%3f], lz=[%3f]", res.linear_x_result, res.linear_y_result, res.linear_z_result);
  ROS_INFO("sending back response: ax=[%3f], ay=[%3f], az=[%3f]", res.angular_x_result, res.angular_y_result, res.angular_z_result);
  return true;
}*/

int main(int argc, char *argv[])
{

  return 0;
}
