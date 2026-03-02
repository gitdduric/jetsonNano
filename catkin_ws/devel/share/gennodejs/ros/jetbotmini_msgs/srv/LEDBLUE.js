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

class LEDBLUERequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledblue = null;
    }
    else {
      if (initObj.hasOwnProperty('ledblue')) {
        this.ledblue = initObj.ledblue
      }
      else {
        this.ledblue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDBLUERequest
    // Serialize message field [ledblue]
    bufferOffset = _serializer.int32(obj.ledblue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDBLUERequest
    let len;
    let data = new LEDBLUERequest(null);
    // Deserialize message field [ledblue]
    data.ledblue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/LEDBLUERequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f90e4abf82e09b8375aec3cc112c4be9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    int32 ledblue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDBLUERequest(null);
    if (msg.ledblue !== undefined) {
      resolved.ledblue = msg.ledblue;
    }
    else {
      resolved.ledblue = 0
    }

    return resolved;
    }
};

class LEDBLUEResponse {
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
    // Serializes a message object of type LEDBLUEResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDBLUEResponse
    let len;
    let data = new LEDBLUEResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/LEDBLUEResponse';
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
    const resolved = new LEDBLUEResponse(null);
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
  Request: LEDBLUERequest,
  Response: LEDBLUEResponse,
  md5sum() { return '47351cc96df61967f8e7918f3664cc29'; },
  datatype() { return 'jetbotmini_msgs/LEDBLUE'; }
};
