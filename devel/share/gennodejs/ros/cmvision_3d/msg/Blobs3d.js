// Auto-generated. Do not edit!

// (in-package cmvision_3d.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Blob3d = require('./Blob3d.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Blobs3d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.blob_count = null;
      this.blobs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('blob_count')) {
        this.blob_count = initObj.blob_count
      }
      else {
        this.blob_count = 0;
      }
      if (initObj.hasOwnProperty('blobs')) {
        this.blobs = initObj.blobs
      }
      else {
        this.blobs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Blobs3d
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [blob_count]
    bufferOffset = _serializer.uint32(obj.blob_count, buffer, bufferOffset);
    // Serialize message field [blobs]
    // Serialize the length for message field [blobs]
    bufferOffset = _serializer.uint32(obj.blobs.length, buffer, bufferOffset);
    obj.blobs.forEach((val) => {
      bufferOffset = Blob3d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Blobs3d
    let len;
    let data = new Blobs3d(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [blob_count]
    data.blob_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [blobs]
    // Deserialize array length for message field [blobs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blobs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blobs[i] = Blob3d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.blobs.forEach((val) => {
      length += Blob3d.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cmvision_3d/Blobs3d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '869bbddc0459864dc4de06329dfb061b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 blob_count
    Blob3d[] blobs
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: cmvision_3d/Blob3d
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
    const resolved = new Blobs3d(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.blob_count !== undefined) {
      resolved.blob_count = msg.blob_count;
    }
    else {
      resolved.blob_count = 0
    }

    if (msg.blobs !== undefined) {
      resolved.blobs = new Array(msg.blobs.length);
      for (let i = 0; i < resolved.blobs.length; ++i) {
        resolved.blobs[i] = Blob3d.Resolve(msg.blobs[i]);
      }
    }
    else {
      resolved.blobs = []
    }

    return resolved;
    }
};

module.exports = Blobs3d;
