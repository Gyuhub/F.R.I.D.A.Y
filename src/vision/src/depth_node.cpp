#include "ros/ros.h"
#include "std_msgs/String.h"
#include <std_msgs/Float32MultiArray.h>
#include <image_transport/image_transport.h>
#include <msg_pkg/msg_data.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui.hpp>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Vector3.h>

using namespace cv;
using namespace std;

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //퍼블리쉬 할 토픽 선언
    pub_ = n_.advertise<msg_pkg::msg_data>("/ObjectDepth", 100);

    //섭스크라이브 할 토픽픽 선언
    image_transport::ImageTransport It(n_);


    sub_img_ = It.subscribe("/kinect2/sd/image_depth_rect", 1, &SubscribeAndPublish::DepthCallBack, this);
    sub_pointcloud_ = It.subscribe("kinect2/sd/points", 1, &SubscribeAndPublish::PointCloudCallBack, this);
    sub_point_ = n_.subscribe("/ObjectPosition", 1000, &SubscribeAndPublish::PointCallBack, this);
  }

  void DepthCallBack(const sensor_msgs::Image::ConstPtr& depth_img);
  void PointCloudCallBack(const sensor_msgs::PointCloud2::ConstPtr point_cloud_image);
  void PointCallBack(const msg_pkg::msg_data::ConstPtr& msg);

private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  cv_bridge::CvImagePtr cv_ptr;
  ros::NodeHandle n_;
  ros::Publisher pub_;
  image_transport::Subscriber sub_img_;
  image_transport::Subscriber sub_pointcloud_;
  ros::Subscriber sub_point_;
  msg_pkg::msg_data object_depth_;
  msg_pkg::msg_data object_point_;
};

void SubscribeAndPublish::DepthCallBack(const sensor_msgs::Image::ConstPtr& depth_img)
{
  try {
    cv_ptr = cv_bridge::toCvCopy(depth_img, sensor_msgs::image_encodings::TYPE_16UC1);
    //cv_ptr = cv_bridge::toCvCopy(depth_img, sensor_msgs::image_encodings::BGR8);
  } catch (cv_bridge::Exception &e) {
    ROS_ERROR("Error to convert!");
    return;
  }
  imshow("Depth Image",cv_ptr->image);
  object_depth_.z_depth = cv_ptr->image.at<ushort>(Point(object_point_.x , object_point_.y));
}

void SubscribeAndPublish::PointCloudCallBack(const sensor_msgs::Image::ConstPtr &point_cloud_image)
{
  point_cloud_image->
}

void SubscribeAndPublish::PointCallBack(const msg_pkg::msg_data::ConstPtr &msg)
{
  object_point_.x = msg->x;
  object_point_.y = msg->y;
  // Publish the data.
  sub_img_.getTopic();
  pub_.publish (object_depth_);
  ROS_INFO("Positions received X : [%u], Y : [%u]",msg->x,msg->y);
  ROS_INFO("Get depth data Z :[%u]", object_depth_.z_depth);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "depth_node");
  SubscribeAndPublish SAPObject;
  ros::spin();

  return 0;
}
