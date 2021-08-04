// Generated by gencpp from file msg_pkg/srv_dataRequest.msg
// DO NOT EDIT!


#ifndef MSG_PKG_MESSAGE_SRV_DATAREQUEST_H
#define MSG_PKG_MESSAGE_SRV_DATAREQUEST_H


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
struct srv_dataRequest_
{
  typedef srv_dataRequest_<ContainerAllocator> Type;

  srv_dataRequest_()
    : linear_x(0.0)
    , linear_y(0.0)
    , linear_z(0.0)
    , angular_x(0.0)
    , angular_y(0.0)
    , angular_z(0.0)  {
    }
  srv_dataRequest_(const ContainerAllocator& _alloc)
    : linear_x(0.0)
    , linear_y(0.0)
    , linear_z(0.0)
    , angular_x(0.0)
    , angular_y(0.0)
    , angular_z(0.0)  {
  (void)_alloc;
    }



   typedef double _linear_x_type;
  _linear_x_type linear_x;

   typedef double _linear_y_type;
  _linear_y_type linear_y;

   typedef double _linear_z_type;
  _linear_z_type linear_z;

   typedef double _angular_x_type;
  _angular_x_type angular_x;

   typedef double _angular_y_type;
  _angular_y_type angular_y;

   typedef double _angular_z_type;
  _angular_z_type angular_z;





  typedef boost::shared_ptr< ::msg_pkg::srv_dataRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_pkg::srv_dataRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srv_dataRequest_

typedef ::msg_pkg::srv_dataRequest_<std::allocator<void> > srv_dataRequest;

typedef boost::shared_ptr< ::msg_pkg::srv_dataRequest > srv_dataRequestPtr;
typedef boost::shared_ptr< ::msg_pkg::srv_dataRequest const> srv_dataRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_pkg::srv_dataRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_pkg::srv_dataRequest_<ContainerAllocator1> & lhs, const ::msg_pkg::srv_dataRequest_<ContainerAllocator2> & rhs)
{
  return lhs.linear_x == rhs.linear_x &&
    lhs.linear_y == rhs.linear_y &&
    lhs.linear_z == rhs.linear_z &&
    lhs.angular_x == rhs.angular_x &&
    lhs.angular_y == rhs.angular_y &&
    lhs.angular_z == rhs.angular_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_pkg::srv_dataRequest_<ContainerAllocator1> & lhs, const ::msg_pkg::srv_dataRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::srv_dataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::srv_dataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::srv_dataRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ac58878d00f42fbc731fa86d45253b5";
  }

  static const char* value(const ::msg_pkg::srv_dataRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ac58878d00f42fbULL;
  static const uint64_t static_value2 = 0xc731fa86d45253b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_pkg/srv_dataRequest";
  }

  static const char* value(const ::msg_pkg::srv_dataRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 linear_x\n"
"float64 linear_y\n"
"float64 linear_z\n"
"float64 angular_x\n"
"float64 angular_y\n"
"float64 angular_z\n"
;
  }

  static const char* value(const ::msg_pkg::srv_dataRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear_x);
      stream.next(m.linear_y);
      stream.next(m.linear_z);
      stream.next(m.angular_x);
      stream.next(m.angular_y);
      stream.next(m.angular_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srv_dataRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_pkg::srv_dataRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_pkg::srv_dataRequest_<ContainerAllocator>& v)
  {
    s << indent << "linear_x: ";
    Printer<double>::stream(s, indent + "  ", v.linear_x);
    s << indent << "linear_y: ";
    Printer<double>::stream(s, indent + "  ", v.linear_y);
    s << indent << "linear_z: ";
    Printer<double>::stream(s, indent + "  ", v.linear_z);
    s << indent << "angular_x: ";
    Printer<double>::stream(s, indent + "  ", v.angular_x);
    s << indent << "angular_y: ";
    Printer<double>::stream(s, indent + "  ", v.angular_y);
    s << indent << "angular_z: ";
    Printer<double>::stream(s, indent + "  ", v.angular_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_PKG_MESSAGE_SRV_DATAREQUEST_H