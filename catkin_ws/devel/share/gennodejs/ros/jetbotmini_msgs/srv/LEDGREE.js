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

class LEDGREERequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledgree = null;
    }
    else {
      if (initObj.hasOwnProperty('ledgree')) {
        this.ledgree = initObj.ledgree
      }
      else {
        this.ledgree = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDGREERequest
    // Serialize message field [ledgree]
    bufferOffset = _serializer.int32(obj.ledgree, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDGREERequest
    let len;
    let data = new LEDGREERequest(null);
    // Deserialize message field [ledgree]
    data.ledgree = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/LEDGREERequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68c60c31d96409d9417a5b98e97a1dad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    int32 ledgree
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDGREERequest(null);
    if (msg.ledgree !== undefined) {
      resolved.ledgree = msg.ledgree;
    }
    else {
      resolved.ledgree = 0
    }

    return resolved;
    }
};

class LEDGREEResponse {
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
    // Serializes a message object of type LEDGREEResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDGREEResponse
    let len;
    let data = new LEDGREEResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/LEDGREEResponse';
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
    const resolved = new LEDGREEResponse(null);
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
  Request: LEDGREERequest,
  Response: LEDGREEResponse,
  md5sum() { return '86491fb7054f298518353955ffe73456'; },
  datatype() { return 'jetbotmini_msgs/LEDGREE'; }
};
