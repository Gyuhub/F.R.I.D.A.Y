// Generated by gencpp from file msg_pkg/srv_dataResponse.msg
// DO NOT EDIT!


#ifndef MSG_PKG_MESSAGE_SRV_DATARESPONSE_H
#define MSG_PKG_MESSAGE_SRV_DATARESPONSE_H


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
struct srv_dataResponse_
{
  typedef srv_dataResponse_<ContainerAllocator> Type;

  srv_dataResponse_()
    : linear_x_result(0.0)
    , linear_y_result(0.0)
    , linear_z_result(0.0)
    , angular_x_result(0.0)
    , angular_y_result(0.0)
    , angular_z_result(0.0)  {
    }
  srv_dataResponse_(const ContainerAllocator& _alloc)
    : linear_x_result(0.0)
    , linear_y_result(0.0)
    , linear_z_result(0.0)
    , angular_x_result(0.0)
    , angular_y_result(0.0)
    , angular_z_result(0.0)  {
  (void)_alloc;
    }



   typedef double _linear_x_result_type;
  _linear_x_result_type linear_x_result;

   typedef double _linear_y_result_type;
  _linear_y_result_type linear_y_result;

   typedef double _linear_z_result_type;
  _linear_z_result_type linear_z_result;

   typedef double _angular_x_result_type;
  _angular_x_result_type angular_x_result;

   typedef double _angular_y_result_type;
  _angular_y_result_type angular_y_result;

   typedef double _angular_z_result_type;
  _angular_z_result_type angular_z_result;





  typedef boost::shared_ptr< ::msg_pkg::srv_dataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_pkg::srv_dataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct srv_dataResponse_

typedef ::msg_pkg::srv_dataResponse_<std::allocator<void> > srv_dataResponse;

typedef boost::shared_ptr< ::msg_pkg::srv_dataResponse > srv_dataResponsePtr;
typedef boost::shared_ptr< ::msg_pkg::srv_dataResponse const> srv_dataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_pkg::srv_dataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_pkg::srv_dataResponse_<ContainerAllocator1> & lhs, const ::msg_pkg::srv_dataResponse_<ContainerAllocator2> & rhs)
{
  return lhs.linear_x_result == rhs.linear_x_result &&
    lhs.linear_y_result == rhs.linear_y_result &&
    lhs.linear_z_result == rhs.linear_z_result &&
    lhs.angular_x_result == rhs.angular_x_result &&
    lhs.angular_y_result == rhs.angular_y_result &&
    lhs.angular_z_result == rhs.angular_z_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_pkg::srv_dataResponse_<ContainerAllocator1> & lhs, const ::msg_pkg::srv_dataResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_pkg::srv_dataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_pkg::srv_dataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_pkg::srv_dataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "009ac2610164615dbdb217c747ffcb0f";
  }

  static const char* value(const ::msg_pkg::srv_dataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x009ac2610164615dULL;
  static const uint64_t static_value2 = 0xbdb217c747ffcb0fULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_pkg/srv_dataResponse";
  }

  static const char* value(const ::msg_pkg::srv_dataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 linear_x_result\n"
"float64 linear_y_result\n"
"float64 linear_z_result\n"
"float64 angular_x_result\n"
"float64 angular_y_result\n"
"float64 angular_z_result\n"
"\n"
;
  }

  static const char* value(const ::msg_pkg::srv_dataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear_x_result);
      stream.next(m.linear_y_result);
      stream.next(m.linear_z_result);
      stream.next(m.angular_x_result);
      stream.next(m.angular_y_result);
      stream.next(m.angular_z_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srv_dataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_pkg::srv_dataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_pkg::srv_dataResponse_<ContainerAllocator>& v)
  {
    s << indent << "linear_x_result: ";
    Printer<double>::stream(s, indent + "  ", v.linear_x_result);
    s << indent << "linear_y_result: ";
    Printer<double>::stream(s, indent + "  ", v.linear_y_result);
    s << indent << "linear_z_result: ";
    Printer<double>::stream(s, indent + "  ", v.linear_z_result);
    s << indent << "angular_x_result: ";
    Printer<double>::stream(s, indent + "  ", v.angular_x_result);
    s << indent << "angular_y_result: ";
    Printer<double>::stream(s, indent + "  ", v.angular_y_result);
    s << indent << "angular_z_result: ";
    Printer<double>::stream(s, indent + "  ", v.angular_z_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_PKG_MESSAGE_SRV_DATARESPONSE_H