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

class PatrolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SetLoop = null;
      this.Commond = null;
      this.length = null;
      this.speed = null;
      this.laserDistance = null;
      this.laserAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('SetLoop')) {
        this.SetLoop = initObj.SetLoop
      }
      else {
        this.SetLoop = false;
      }
      if (initObj.hasOwnProperty('Commond')) {
        this.Commond = initObj.Commond
      }
      else {
        this.Commond = '';
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('laserDistance')) {
        this.laserDistance = initObj.laserDistance
      }
      else {
        this.laserDistance = 0.0;
      }
      if (initObj.hasOwnProperty('laserAngle')) {
        this.laserAngle = initObj.laserAngle
      }
      else {
        this.laserAngle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolRequest
    // Serialize message field [SetLoop]
    bufferOffset = _serializer.bool(obj.SetLoop, buffer, bufferOffset);
    // Serialize message field [Commond]
    bufferOffset = _serializer.string(obj.Commond, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [laserDistance]
    bufferOffset = _serializer.float32(obj.laserDistance, buffer, bufferOffset);
    // Serialize message field [laserAngle]
    bufferOffset = _serializer.int32(obj.laserAngle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolRequest
    let len;
    let data = new PatrolRequest(null);
    // Deserialize message field [SetLoop]
    data.SetLoop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Commond]
    data.Commond = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laserDistance]
    data.laserDistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laserAngle]
    data.laserAngle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Commond.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/PatrolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a4edaad5e237a9c19ba9256ad3b5895';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool    SetLoop
    string  Commond
    float32 length
    float32 speed
    float32 laserDistance
    int32   laserAngle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrolRequest(null);
    if (msg.SetLoop !== undefined) {
      resolved.SetLoop = msg.SetLoop;
    }
    else {
      resolved.SetLoop = false
    }

    if (msg.Commond !== undefined) {
      resolved.Commond = msg.Commond;
    }
    else {
      resolved.Commond = ''
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.laserDistance !== undefined) {
      resolved.laserDistance = msg.laserDistance;
    }
    else {
      resolved.laserDistance = 0.0
    }

    if (msg.laserAngle !== undefined) {
      resolved.laserAngle = msg.laserAngle;
    }
    else {
      resolved.laserAngle = 0
    }

    return resolved;
    }
};

class PatrolResponse {
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
    // Serializes a message object of type PatrolResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolResponse
    let len;
    let data = new PatrolResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetbotmini_msgs/PatrolResponse';
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
    const resolved = new PatrolResponse(null);
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
  Request: PatrolRequest,
  Response: PatrolResponse,
  md5sum() { return '58305e3e8d6898838f33185040fe9ed3'; },
  datatype() { return 'jetbotmini_msgs/Patrol'; }
};
