#include "../include/dynamixel/dynamixel_interface.h"

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    pub_ = n_.advertise<msg_pkg::msg_data>("/KeyboardOutput", 100);
    sub_ = n_.subscribe("/cmd_vel", 1, &SubscribeAndPublish::KeyboardInputCallBack, this);
  }

  void KeyboardInputCallBack(const geometry_msgs::Twist::ConstPtr& msg);

private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_;
  msg_pkg::msg_data msg_;
  ros::ServiceServer serv_;
  /*bool KeyboardInput(msg_pkg::srv_data::Request  &req,
                     msg_pkg::srv_data::Response &res);*/
};

void SubscribeAndPublish::KeyboardInputCallBack(const geometry_msgs::Twist::ConstPtr& msg)
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
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamixel_keyboardIO_node");
  ros::NodeHandle nh;
  SubscribeAndPublish SAPO;

  ros::spin();

  return 0;
}
