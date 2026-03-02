// Auto-generated. Do not edit!

// (in-package jetbotmini_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PatrolWarning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.warning = null;
      this.SetLoop = null;
      this.close = null;
    }
    else {
      if (initObj.hasOwnProperty('warning')) {
        this.warning = initObj.warning
      }
      else {
        this.warning = 0;
      }
      if (initObj.hasOwnProperty('SetLoop')) {
        this.SetLoop = initObj.SetLoop
      }
      else {
        this.SetLoop = false;
      }
      if (initObj.hasOwnProperty('close')) {
        this.close = initObj.close
      }
      else {
        this.close = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolWarning
    // Serialize message field [warning]
    bufferOffset = _serializer.int32(obj.warning, buffer, bufferOffset);
    // Serialize message field [SetLoop]
    bufferOffset = _serializer.bool(obj.SetLoop, buffer, bufferOffset);
    // Serialize message field [close]
    bufferOffset = _serializer.bool(obj.close, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolWarning
    let len;
    let data = new PatrolWarning(null);
    // Deserialize message field [warning]
    data.warning = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [SetLoop]
    data.SetLoop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [close]
    data.close = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbotmini_msgs/PatrolWarning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51654651f81a5e9bee47c3e8eb6bbc5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 warning
    bool  SetLoop
    bool  close
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrolWarning(null);
    if (msg.warning !== undefined) {
      resolved.warning = msg.warning;
    }
    else {
      resolved.warning = 0
    }

    if (msg.SetLoop !== undefined) {
      resolved.SetLoop = msg.SetLoop;
    }
    else {
      resolved.SetLoop = false
    }

    if (msg.close !== undefined) {
      resolved.close = msg.close;
    }
    else {
      resolved.close = false
    }

    return resolved;
    }
};

module.exports = PatrolWarning;
