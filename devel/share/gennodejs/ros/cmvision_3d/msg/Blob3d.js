// Auto-generated. Do not edit!

// (in-package cmvision_3d.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Blob3d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.red = null;
      this.green = null;
      this.blue = null;
      this.area = null;
      this.center = null;
      this.top_left = null;
      this.bottom_right = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = 0;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = 0;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = 0;
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('top_left')) {
        this.top_left = initObj.top_left
      }
      else {
        this.top_left = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bottom_right')) {
        this.bottom_right = initObj.bottom_right
      }
      else {
        this.bottom_right = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Blob3d
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [red]
    bufferOffset = _serializer.uint32(obj.red, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.uint32(obj.green, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.uint32(obj.blue, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = _serializer.uint32(obj.area, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [top_left]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top_left, buffer, bufferOffset);
    // Serialize message field [bottom_right]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bottom_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Blob3d
    let len;
    let data = new Blob3d(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [red]
    data.red = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [top_left]
    data.top_left = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bottom_right]
    data.bottom_right = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cmvision_3d/Blob3d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7ac1acee51124a3194784be5dd98a9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint32 red
    uint32 green
    uint32 blue
    uint32 area
    geometry_msgs/Point center
    geometry_msgs/Point top_left
    geometry_msgs/Point bottom_right
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Blob3d(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = 0
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = 0
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = 0
    }

    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.top_left !== undefined) {
      resolved.top_left = geometry_msgs.msg.Point.Resolve(msg.top_left)
    }
    else {
      resolved.top_left = new geometry_msgs.msg.Point()
    }

    if (msg.bottom_right !== undefined) {
      resolved.bottom_right = geometry_msgs.msg.Point.Resolve(msg.bottom_right)
    }
    else {
      resolved.bottom_right = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Blob3d;
