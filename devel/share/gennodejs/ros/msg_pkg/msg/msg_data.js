// Auto-generated. Do not edit!

// (in-package msg_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.x_pos = null;
      this.y_pos = null;
      this.z_pos = null;
      this.x_ik_pos = null;
      this.y_ik_pos = null;
      this.z_ik_pos = null;
      this.z_depth = null;
      this.pos_flag = null;
      this.depth_flag = null;
      this.f64_linear_x = null;
      this.f64_linear_y = null;
      this.f64_linear_z = null;
      this.f64_angular_x = null;
      this.f64_angular_y = null;
      this.f64_angular_z = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0;
      }
      if (initObj.hasOwnProperty('z_pos')) {
        this.z_pos = initObj.z_pos
      }
      else {
        this.z_pos = 0;
      }
      if (initObj.hasOwnProperty('x_ik_pos')) {
        this.x_ik_pos = initObj.x_ik_pos
      }
      else {
        this.x_ik_pos = 0;
      }
      if (initObj.hasOwnProperty('y_ik_pos')) {
        this.y_ik_pos = initObj.y_ik_pos
      }
      else {
        this.y_ik_pos = 0;
      }
      if (initObj.hasOwnProperty('z_ik_pos')) {
        this.z_ik_pos = initObj.z_ik_pos
      }
      else {
        this.z_ik_pos = 0;
      }
      if (initObj.hasOwnProperty('z_depth')) {
        this.z_depth = initObj.z_depth
      }
      else {
        this.z_depth = 0;
      }
      if (initObj.hasOwnProperty('pos_flag')) {
        this.pos_flag = initObj.pos_flag
      }
      else {
        this.pos_flag = false;
      }
      if (initObj.hasOwnProperty('depth_flag')) {
        this.depth_flag = initObj.depth_flag
      }
      else {
        this.depth_flag = false;
      }
      if (initObj.hasOwnProperty('f64_linear_x')) {
        this.f64_linear_x = initObj.f64_linear_x
      }
      else {
        this.f64_linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('f64_linear_y')) {
        this.f64_linear_y = initObj.f64_linear_y
      }
      else {
        this.f64_linear_y = 0.0;
      }
      if (initObj.hasOwnProperty('f64_linear_z')) {
        this.f64_linear_z = initObj.f64_linear_z
      }
      else {
        this.f64_linear_z = 0.0;
      }
      if (initObj.hasOwnProperty('f64_angular_x')) {
        this.f64_angular_x = initObj.f64_angular_x
      }
      else {
        this.f64_angular_x = 0.0;
      }
      if (initObj.hasOwnProperty('f64_angular_y')) {
        this.f64_angular_y = initObj.f64_angular_y
      }
      else {
        this.f64_angular_y = 0.0;
      }
      if (initObj.hasOwnProperty('f64_angular_z')) {
        this.f64_angular_z = initObj.f64_angular_z
      }
      else {
        this.f64_angular_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg_data
    // Serialize message field [data]
    bufferOffset = _serializer.int32(obj.data, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.int32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [x_pos]
    bufferOffset = _serializer.uint32(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.uint32(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [z_pos]
    bufferOffset = _serializer.uint32(obj.z_pos, buffer, bufferOffset);
    // Serialize message field [x_ik_pos]
    bufferOffset = _serializer.uint32(obj.x_ik_pos, buffer, bufferOffset);
    // Serialize message field [y_ik_pos]
    bufferOffset = _serializer.uint32(obj.y_ik_pos, buffer, bufferOffset);
    // Serialize message field [z_ik_pos]
    bufferOffset = _serializer.uint32(obj.z_ik_pos, buffer, bufferOffset);
    // Serialize message field [z_depth]
    bufferOffset = _serializer.int32(obj.z_depth, buffer, bufferOffset);
    // Serialize message field [pos_flag]
    bufferOffset = _serializer.bool(obj.pos_flag, buffer, bufferOffset);
    // Serialize message field [depth_flag]
    bufferOffset = _serializer.bool(obj.depth_flag, buffer, bufferOffset);
    // Serialize message field [f64_linear_x]
    bufferOffset = _serializer.float64(obj.f64_linear_x, buffer, bufferOffset);
    // Serialize message field [f64_linear_y]
    bufferOffset = _serializer.float64(obj.f64_linear_y, buffer, bufferOffset);
    // Serialize message field [f64_linear_z]
    bufferOffset = _serializer.float64(obj.f64_linear_z, buffer, bufferOffset);
    // Serialize message field [f64_angular_x]
    bufferOffset = _serializer.float64(obj.f64_angular_x, buffer, bufferOffset);
    // Serialize message field [f64_angular_y]
    bufferOffset = _serializer.float64(obj.f64_angular_y, buffer, bufferOffset);
    // Serialize message field [f64_angular_z]
    bufferOffset = _serializer.float64(obj.f64_angular_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg_data
    let len;
    let data = new msg_data(null);
    // Deserialize message field [data]
    data.data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [z_pos]
    data.z_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x_ik_pos]
    data.x_ik_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y_ik_pos]
    data.y_ik_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [z_ik_pos]
    data.z_ik_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [z_depth]
    data.z_depth = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos_flag]
    data.pos_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [depth_flag]
    data.depth_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [f64_linear_x]
    data.f64_linear_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f64_linear_y]
    data.f64_linear_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f64_linear_z]
    data.f64_linear_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f64_angular_x]
    data.f64_angular_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f64_angular_y]
    data.f64_angular_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f64_angular_z]
    data.f64_angular_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 94;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_pkg/msg_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '502f6070fe0715f8193e5e6e22265227';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 data
    int32 x
    int32 y
    float32 z
    
    uint32 x_pos
    uint32 y_pos
    uint32 z_pos
    
    uint32 x_ik_pos
    uint32 y_ik_pos
    uint32 z_ik_pos
    
    int32 z_depth
    
    bool pos_flag
    bool depth_flag
    
    float64 f64_linear_x
    float64 f64_linear_y
    float64 f64_linear_z
    
    float64 f64_angular_x
    float64 f64_angular_y
    float64 f64_angular_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg_data(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0
    }

    if (msg.z_pos !== undefined) {
      resolved.z_pos = msg.z_pos;
    }
    else {
      resolved.z_pos = 0
    }

    if (msg.x_ik_pos !== undefined) {
      resolved.x_ik_pos = msg.x_ik_pos;
    }
    else {
      resolved.x_ik_pos = 0
    }

    if (msg.y_ik_pos !== undefined) {
      resolved.y_ik_pos = msg.y_ik_pos;
    }
    else {
      resolved.y_ik_pos = 0
    }

    if (msg.z_ik_pos !== undefined) {
      resolved.z_ik_pos = msg.z_ik_pos;
    }
    else {
      resolved.z_ik_pos = 0
    }

    if (msg.z_depth !== undefined) {
      resolved.z_depth = msg.z_depth;
    }
    else {
      resolved.z_depth = 0
    }

    if (msg.pos_flag !== undefined) {
      resolved.pos_flag = msg.pos_flag;
    }
    else {
      resolved.pos_flag = false
    }

    if (msg.depth_flag !== undefined) {
      resolved.depth_flag = msg.depth_flag;
    }
    else {
      resolved.depth_flag = false
    }

    if (msg.f64_linear_x !== undefined) {
      resolved.f64_linear_x = msg.f64_linear_x;
    }
    else {
      resolved.f64_linear_x = 0.0
    }

    if (msg.f64_linear_y !== undefined) {
      resolved.f64_linear_y = msg.f64_linear_y;
    }
    else {
      resolved.f64_linear_y = 0.0
    }

    if (msg.f64_linear_z !== undefined) {
      resolved.f64_linear_z = msg.f64_linear_z;
    }
    else {
      resolved.f64_linear_z = 0.0
    }

    if (msg.f64_angular_x !== undefined) {
      resolved.f64_angular_x = msg.f64_angular_x;
    }
    else {
      resolved.f64_angular_x = 0.0
    }

    if (msg.f64_angular_y !== undefined) {
      resolved.f64_angular_y = msg.f64_angular_y;
    }
    else {
      resolved.f64_angular_y = 0.0
    }

    if (msg.f64_angular_z !== undefined) {
      resolved.f64_angular_z = msg.f64_angular_z;
    }
    else {
      resolved.f64_angular_z = 0.0
    }

    return resolved;
    }
};

module.exports = msg_data;
