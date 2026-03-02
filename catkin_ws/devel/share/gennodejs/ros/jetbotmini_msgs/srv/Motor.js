// Auto-generated. Do not edit!

// (in-package jetbotmini_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rightspeed = null;
      this.leftspeed = null;
    }
    else {
      if (initObj.hasOwnProperty('rightspeed')) {
        this.rightspeed = initObj.rightspeed
      }
      else {
        this.rightspeed = 0.0;
      }
      if (initObj.hasOwnProperty('leftspeed')) {
        this.leftspeed = initObj.leftspeed
      }
      else {
        this.leftspeed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorRequest
    // Serialize message field [rightspeed]
    bufferOffset = _serializer.float32(obj.rightspeed, buffer, bufferOffset);
    // Serialize message field [leftspeed]
    bufferOffset = _serializer.float32(obj.leftspeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorRequest
    let len;
    let data = new MotorRequest(null);
    // Deserialize message field [rightspeed]
    data.rightspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [leftspeed]
    data.leftspeed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/MotorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78334da0d98ee6f951a6eca6d3dc6313';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    float32 rightspeed
    float32 leftspeed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorRequest(null);
    if (msg.rightspeed !== undefined) {
      resolved.rightspeed = msg.rightspeed;
    }
    else {
      resolved.rightspeed = 0.0
    }

    if (msg.leftspeed !== undefined) {
      resolved.leftspeed = msg.leftspeed;
    }
    else {
      resolved.leftspeed = 0.0
    }

    return resolved;
    }
};

class MotorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorResponse
    let len;
    let data = new MotorResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/MotorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorRequest,
  Response: MotorResponse,
  md5sum() { return 'd173c13dad4a63ef401052b6062c05e5'; },
  datatype() { return 'jetbotmini_msgs/Motor'; }
};
