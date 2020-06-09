// Generated by gencpp from file beginner_tutorials/greatingRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_GREATINGREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_GREATINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct greatingRequest_
{
  typedef greatingRequest_<ContainerAllocator> Type;

  greatingRequest_()
    : say_hello()  {
    }
  greatingRequest_(const ContainerAllocator& _alloc)
    : say_hello(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _say_hello_type;
  _say_hello_type say_hello;





  typedef boost::shared_ptr< ::beginner_tutorials::greatingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::greatingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct greatingRequest_

typedef ::beginner_tutorials::greatingRequest_<std::allocator<void> > greatingRequest;

typedef boost::shared_ptr< ::beginner_tutorials::greatingRequest > greatingRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::greatingRequest const> greatingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::greatingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/xu/my_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::greatingRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::greatingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::greatingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7df537689ebc6fdfe225f14dcb63a8c9";
  }

  static const char* value(const ::beginner_tutorials::greatingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7df537689ebc6fdfULL;
  static const uint64_t static_value2 = 0xe225f14dcb63a8c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/greatingRequest";
  }

  static const char* value(const ::beginner_tutorials::greatingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string say_hello\n\
";
  }

  static const char* value(const ::beginner_tutorials::greatingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.say_hello);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct greatingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::greatingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::greatingRequest_<ContainerAllocator>& v)
  {
    s << indent << "say_hello: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.say_hello);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_GREATINGREQUEST_H