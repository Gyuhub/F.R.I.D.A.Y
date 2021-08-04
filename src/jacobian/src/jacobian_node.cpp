#include "ros/ros.h"
#include "std_msgs/String.h"
#include <std_msgs/Int32.h>
#include <std_msgs/Float64.h>
#include <Eigen/Eigen>
#include <Eigen/Jacobi>
#include <msg_pkg/msg_data.h>
#include <tf/transform_broadcaster.h>

#define mu 5            //pseudo inverse constant
#define K 1             //damped least-square gain

using namespace std;
using namespace Eigen;

typedef Matrix<double, 6, 6> matrix6x6;
typedef Matrix<double, 6, 1> column6x1;
typedef Matrix<double, 3, 1> column3x1;

class SubAndPubJacobian
{
public:
  SubAndPubJacobian()
  {
    //퍼블리쉬 할 토픽 선언
    pub_ = n_.advertise<msg_pkg::msg_data>("/ObjectIKPosition", 100);

    //섭스크라이브 할 토픽픽 선언
    sub_pos   = n_.subscribe("/ObjectPosition", 1, &SubAndPubJacobian::PositionCallBack, this);
    sub_depth = n_.subscribe("/ObjectDepth", 1, &SubAndPubJacobian::DepthCallBack, this);
  }

  void PositionCallBack(const msg_pkg::msg_data::ConstPtr& msg);
  void DepthCallBack(const msg_pkg::msg_data::ConstPtr& msg);
  void SetMatrixZero(column6x1& Vec);
  void SetMatrixZero(matrix6x6& Mat);
  void MatrixInit();
  void Jacobian();

private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_pos;
  ros::Subscriber sub_depth;
  msg_pkg::msg_data ik_pos;

  tf::TransformBroadcaster br;
  tf::Transform transform;
  tf::Quaternion qtn;

  Vector3d p_des;   // Pdes : Subscribe한 좌표
  Vector4d org,e_e; // Origin, End Effector Position Matrix
  Matrix4d hom;     // Homogeneous Matirx
  column6x1 p_des_ori, p_cur, p_err, p_pre_err, p_err_dif,  v_des, v_pre_des;
  // Pdes_ori : End Effector destination,orientation Matrix
  // Pcur : End Effector current Position Matrix
  // Perr : End Effector error Position Matrix
  // Ppre_err : End Effector Pre error Position Matrix
  // Perr_dif : differential Perr
  // Vdes : End Effector destination Velocity Matrix
  // Vpre_des : End Effector Pre destination Velocity Matrix
  column6x1 q_joint, dq_joint;
  // Qjoint : Manipulator joint Matrix
  // dQjoint : differential Qjoint
  matrix6x6 jaco,pseudo_jaco;
  // jaco : Jacobian Matrix
  // pseudo_jaco : Pseudo Inverse Jacobian Matrix
};

void SubAndPubJacobian::PositionCallBack(const msg_pkg::msg_data::ConstPtr& msg){
  ROS_INFO("Object Position X:[%u] Y:[%u]", msg->x, msg->y);
  ik_pos.x_pos = msg->x;
  ik_pos.y_pos = msg->y;
  ik_pos.pos_flag = true;
}

void SubAndPubJacobian::DepthCallBack(const msg_pkg::msg_data::ConstPtr& msg){
  ROS_INFO("Object Depth Z:[%u]", msg->z_depth);
  ik_pos.z_pos = msg->z_depth;
  ik_pos.depth_flag = true;
  if(ik_pos.pos_flag & ik_pos.depth_flag){
    Jacobian();
    transform.setOrigin( tf::Vector3((double)((256 - ik_pos.x_pos)/100), (double)((212 - ik_pos.y_pos)/100), (double)((ik_pos.z_pos)/1000))); // changes scale from [mm] to [m]
    //qtn.setRPY(0, 0, msg->z_depth);
    //transform.setRotation(qtn);
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "kinect2_link", "Object"));

  }
}

void SubAndPubJacobian::SetMatrixZero(column6x1& Vec){
  Vec.setZero();
}

void SubAndPubJacobian::SetMatrixZero(matrix6x6& Mat){
  Mat.setZero();
}

void SubAndPubJacobian::MatrixInit(){
  this->e_e.setZero();
  this->hom.setZero();
  this->p_des_ori.setZero();
  this->p_cur.setZero();
  this->p_err.setZero();
  this->q_joint.setZero();
  this->dq_joint.setZero();
  this->jaco.setZero();
  this->pseudo_jaco.setZero();
}

void SubAndPubJacobian::Jacobian(){
  ROS_INFO("All Position Topic were received!!");

  p_des(0,0) = ik_pos.x_pos;
  p_des(1,0) = ik_pos.y_pos;
  p_des(2,0) = ik_pos.z_pos;
  pub_.publish(ik_pos);
  ik_pos.pos_flag = false;
  ik_pos.depth_flag = false;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "jacobian_node");
  ros::NodeHandle nh;

  SubAndPubJacobian SAPJ;
  SAPJ.MatrixInit();
  SAPJ.Jacobian();
  ros::spin();

  return 0;
}
