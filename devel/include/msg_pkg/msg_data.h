// Generated by gencpp from file msg_pkg/msg_data.msg
// DO NOT EDIT!


#ifndef MSG_PKG_MESSAGE_MSG_DATA_H
#define MSG_PKG_MESSAGE_MSG_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msg_pkg
{
template <class ContainerAllocator>
struct msg_data_
{
  typedef msg_data_<ContainerAllocator> Type;

  msg_data_()
    : data(0)
    , x(0)
    , y(0)
    , z(0.0)
    , x_pos(0)
    , y_pos(0)
    , z_pos(0)
    , x_ik_pos(0)
    , y_ik_pos(0)
    , z_ik_pos(0)
    , z_depth(0)
    , pos_flag(false)
    , depth_flag(false)
    , f64_linear_x(0.0)
    , f64_linear_y(0.0)
    , f64_linear_z(0.0)
    , f64_angular_x(0.0)
    , f64_angular_y(0.0)
    , f64_angular_z(0.0)  {
    }
  msg_data_(const ContainerAllocator& _alloc)
    : data(0)
    , x(0)
    , y(0)
    , z(0.0)
    , x_pos(0)
    , y_pos(0)
    , z_pos(0)
    , x_ik_pos(0)
    , y_ik_pos(0)
    , z_ik_pos(0)
    , z_depth(0)
    , pos_flag(false)
    , depth_flag(false)
    , f64_linear_x(0.0)
    , f64_linear_y(0.0)
    , f64_linear_z(0.0)
    , f64_angular_x(0.0)
    , f64_angular_y(0.0)
    , f64_angular_z(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _data_type;
  _data_type data;

   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef uint32_t _x_pos_type;
  _x_pos_type x_pos;

   typedef uint32_t _y_pos_type;
  _y_pos_type y_pos;

   typedef uint32_t _z_pos_type;
  _z_pos_type z_pos;

   typedef uint32_t _x_ik_pos_type;
  _x_ik_pos_type x_ik_pos;

   typedef uint32_t _y_ik_pos_type;
  _y_ik_pos_type y_ik_pos;

   typedef uint32_t _z_ik_pos_type;
  _z_ik_pos_type z_ik_pos;

   typedef int32_t _z_depth_type;
  _z_depth_type z_depth;

   typedef uint8_t _pos_flag_type;
  _pos_flag_type pos_flag;

   typedef uint8_t _depth_flag_type;
  _depth_flag_type depth_flag;

   typedef double _f64_linear_x_type;
  _f64_linear_x_type f64_linear_x;

   typedef double _f64_linear_y_type;
  _f64_linear_y_type f64_linear_y;

   typedef double _f64_linear_z_type;
  _f64_linear_z_type f64_linear_z;

   typedef double _f64_angular_x_type;
  _f64_angular_x_type f64_angular_x;

   typedef double _f64_angular_y_type;
  _f64_angular_y_type f64_angular_y;

   typedef double _f64_angular_z_type;
  _f64_angular_z_type f64_angular_z;





  typedef boost::shared_ptr< ::msg_pkg::msg_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_pkg::msg_data_<ContainerAllocator> const> ConstPtr;

}; // struct msg_data_

typedef ::msg_pkg::msg_data_<std::allocator<void> > msg_data;

typedef boost::shared_ptr< ::msg_pkg::msg_data > msg_dataPtr;
typedef boost::shared_ptr< ::msg_pkg::msg_data const> msg_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_pkg::msg_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_pkg::msg_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_pkg::msg_data_<ContainerAllocator1> & lhs, const ::msg_pkg::msg_data_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.x_pos == rhs.x_pos &&
    lhs.y_pos == rhs.y_pos &&
    lhs.z_pos == rhs.z_pos &&
    lhs.x_ik_pos == rhs.x_ik_pos &&
    lhs.y_ik_pos == rhs.y_ik_pos &&
    lhs.z_ik_pos == rhs.z_ik_pos &&
    lhs.z_depth == rhs.z_depth &&
    lhs.pos_flag == rhs.pos_flag &&
    lhs.depth_flag == rhs.depth_flag &&
    lhs.f64_linear_x == rhs.f64_linear_x &&
    lhs.f64_linear_y == rhs.f64_linear_y &&
    lhs.f64_linear_z == rhs.f64_linear_z &&
    lhs.f64_angular_x == rhs.f64_angular_x &&
    lhs.f64_angular_y == rhs.f64_angular_y &&
    lhs.f64_angular_z == rhs.f64_angular_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_pkg::msg_data_<ContainerAllocator1> & lhs, const ::msg_pkg::msg_data_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::msg_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::msg_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::msg_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::msg_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::msg_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::msg_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_pkg::msg_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "502f6070fe0715f8193e5e6e22265227";
  }

  static const char* value(const ::msg_pkg::msg_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x502f6070fe0715f8ULL;
  static const uint64_t static_value2 = 0x193e5e6e22265227ULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_pkg::msg_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_pkg/msg_data";
  }

  static const char* value(const ::msg_pkg::msg_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_pkg::msg_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 data\n"
"int32 x\n"
"int32 y\n"
"float32 z\n"
"\n"
"uint32 x_pos\n"
"uint32 y_pos\n"
"uint32 z_pos\n"
"\n"
"uint32 x_ik_pos\n"
"uint32 y_ik_pos\n"
"uint32 z_ik_pos\n"
"\n"
"int32 z_depth\n"
"\n"
"bool pos_flag\n"
"bool depth_flag\n"
"\n"
"float64 f64_linear_x\n"
"float64 f64_linear_y\n"
"float64 f64_linear_z\n"
"\n"
"float64 f64_angular_x\n"
"float64 f64_angular_y\n"
"float64 f64_angular_z\n"
;
  }

  static const char* value(const ::msg_pkg::msg_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_pkg::msg_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.x_pos);
      stream.next(m.y_pos);
      stream.next(m.z_pos);
      stream.next(m.x_ik_pos);
      stream.next(m.y_ik_pos);
      stream.next(m.z_ik_pos);
      stream.next(m.z_depth);
      stream.next(m.pos_flag);
      stream.next(m.depth_flag);
      stream.next(m.f64_linear_x);
      stream.next(m.f64_linear_y);
      stream.next(m.f64_linear_z);
      stream.next(m.f64_angular_x);
      stream.next(m.f64_angular_y);
      stream.next(m.f64_angular_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_pkg::msg_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_pkg::msg_data_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.data);
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "x_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.x_pos);
    s << indent << "y_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.y_pos);
    s << indent << "z_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.z_pos);
    s << indent << "x_ik_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.x_ik_pos);
    s << indent << "y_ik_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.y_ik_pos);
    s << indent << "z_ik_pos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.z_ik_pos);
    s << indent << "z_depth: ";
    Printer<int32_t>::stream(s, indent + "  ", v.z_depth);
    s << indent << "pos_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pos_flag);
    s << indent << "depth_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.depth_flag);
    s << indent << "f64_linear_x: ";
    Printer<double>::stream(s, indent + "  ", v.f64_linear_x);
    s << indent << "f64_linear_y: ";
    Printer<double>::stream(s, indent + "  ", v.f64_linear_y);
    s << indent << "f64_linear_z: ";
    Printer<double>::stream(s, indent + "  ", v.f64_linear_z);
    s << indent << "f64_angular_x: ";
    Printer<double>::stream(s, indent + "  ", v.f64_angular_x);
    s << indent << "f64_angular_y: ";
    Printer<double>::stream(s, indent + "  ", v.f64_angular_y);
    s << indent << "f64_angular_z: ";
    Printer<double>::stream(s, indent + "  ", v.f64_angular_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_PKG_MESSAGE_MSG_DATA_H