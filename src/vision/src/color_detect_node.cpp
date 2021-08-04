#include "ros/ros.h"
#include "std_msgs/String.h"
#include <std_msgs/Int32.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/PointCloud2.h>
#include <image_transport/image_transport.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui.hpp>
#include <string>
#include <msg_pkg/msg_data.h>

using namespace cv;
using namespace std;

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //퍼블리쉬 할 토픽 선언
    pub_ = n_.advertise<msg_pkg::msg_data>("/ObjectPosition", 100);

    //섭스크라이브 할 토픽픽 선언
    image_transport::ImageTransport It(n_);

    sub_img_ = It.subscribe("/kinect2/sd/image_color_rect", 1, &SubscribeAndPublish::ImageCallBack, this);
  }

  void ImageCallBack(const sensor_msgs::Image::ConstPtr& img);

private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_;
  image_transport::Subscriber sub_img_;
};

void SubscribeAndPublish::ImageCallBack(const sensor_msgs::Image::ConstPtr &img){
  int range_count = 0;
  int inputKey = 0;

  Scalar red(0, 0, 255);
  Scalar blue(255, 0, 0);
  Scalar yellow(0, 255, 255);
  Scalar magenta(255, 0, 255);
  Scalar green(135, 165, 0);


  Mat rgb_color = Mat(1, 1, CV_8UC3, red);
  Mat hsv_color;

  cvtColor(rgb_color, hsv_color, COLOR_BGR2HSV);


  int hue = hsv_color.at<Vec3b>(0, 0)[0];
  int saturation = hsv_color.at<Vec3b>(0, 0)[1];
  int value = hsv_color.at<Vec3b>(0, 0)[2];

  //cout << "hue = " << hue << endl;
  //cout << "saturation = " << saturation << endl;
  //cout << "value = " << value << endl;


  int low_hue = hue - 10;
  int high_hue = hue + 10;

  int low_hue1 = 0, low_hue2 = 0;
  int high_hue1 = 0, high_hue2 = 0;

  if (low_hue < 10 ) {
    range_count = 2;

    high_hue1 = 180;
    low_hue1 = low_hue + 180;
    high_hue2 = high_hue;
    low_hue2 = 0;
  }
  else if (high_hue > 170) {
    range_count = 2;

    high_hue1 = low_hue;
    low_hue1 = 180;
    high_hue2 = high_hue - 180;
    low_hue2 = 0;
  }
  else {
    range_count = 1;

    low_hue1 = low_hue;
    high_hue1 = high_hue;
  }


  //cout << low_hue1 << "  " << high_hue1 << endl;
  //cout << low_hue2 << "  " << high_hue2 << endl;

  cv_bridge::CvImagePtr cv_ptr;

  try {
    cv_ptr = cv_bridge::toCvCopy(img, sensor_msgs::image_encodings::BGR8);
  } catch (cv_bridge::Exception &e) {
    ROS_ERROR("Error to convert!");
    return;
  }

  Mat img_hsv;
  //HSV convert
  cvtColor(cv_ptr->image,img_hsv,COLOR_BGR2HSV);

  //지정한 HSV 범위를 이용하여 영상을 이진화
  Mat img_mask1, img_mask2;
  inRange(img_hsv, Scalar(low_hue1, 133, 63), Scalar(high_hue1, 255, 255), img_mask1);
  if (range_count == 2) {
    inRange(img_hsv, Scalar(low_hue2, 191, 88), Scalar(high_hue2, 255, 255), img_mask2);
    img_mask1 |= img_mask2;
  }

  //morphological opening 작은 점들을 제거
  erode(img_mask1, img_mask1, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
  dilate(img_mask1, img_mask1, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));


  //morphological closing 영역의 구멍 메우기
  dilate(img_mask1, img_mask1, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
  erode(img_mask1, img_mask1, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));

  //Binary Image를 mask를 사용하여 Original Image에서 범위값에 해당하는 Image획득
  Mat img_result;
  bitwise_and(cv_ptr->image,cv_ptr->image, img_result, img_mask1);

  //라벨링
  Mat img_labels, stats, centroids;
  int numOfLables = connectedComponentsWithStats(img_mask1, img_labels,
    stats, centroids, 8, CV_32S);


  //영역박스 그리기
  int max = -1, idx = 0;
  for (int j = 1; j < numOfLables; j++) {
    int area = stats.at<int>(j, CC_STAT_AREA);
    if (max < area)
    {
      max = area;
      idx = j;
    }
  }


  int left = stats.at<int32_t>(idx, CC_STAT_LEFT);
  int top = stats.at<int32_t>(idx, CC_STAT_TOP);
  int width = stats.at<int32_t>(idx, CC_STAT_WIDTH);
  int height = stats.at<int32_t>(idx, CC_STAT_HEIGHT);

  //사각형 박스 그리기
  rectangle(cv_ptr->image, Point(left, top), Point(left + width, top + height),
    Scalar(0, 0, 255), 1);

  //사각형 박스 중앙 원 그리기
  circle(cv_ptr->image,Point(left*2 + width, top*2 + height)/2, 4, green, -1);

  //imshow("Binary Image", img_mask1);
  imshow("Binary Color Image", img_result);
  imshow("Original Image", cv_ptr->image);

  //if(waitKey(5)>=0)
    //return;
  //Spcae Key Event
  inputKey = waitKey(5);
  if (inputKey==32) {
    cout << "Object Point is ( " << (left*2 + width)/2 << " , " << (top*2 + height)/2 << " )" << endl;
    msg_pkg::msg_data Pos;
    //callback 함수에서 받은 input을 사용해서 output을 만들고 이를 pub한다.
    Pos.x = ((left*2 + width)/2);
    Pos.y = ((top*2 + height)/2);

    pub_.publish(Pos);
    ROS_INFO("I Send [%u] and [%u].",Pos.x, Pos.y);
    return;
  }

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "color_detect_node");
  SubscribeAndPublish SAPObject;
  ros::spin();
}
