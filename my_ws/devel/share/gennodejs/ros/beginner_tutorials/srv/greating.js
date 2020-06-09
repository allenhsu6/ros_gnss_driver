// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class greatingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.say_hello = null;
    }
    else {
      if (initObj.hasOwnProperty('say_hello')) {
        this.say_hello = initObj.say_hello
      }
      else {
        this.say_hello = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type greatingRequest
    // Serialize message field [say_hello]
    bufferOffset = _serializer.string(obj.say_hello, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type greatingRequest
    let len;
    let data = new greatingRequest(null);
    // Deserialize message field [say_hello]
    data.say_hello = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.say_hello.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/greatingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7df537689ebc6fdfe225f14dcb63a8c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string say_hello
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new greatingRequest(null);
    if (msg.say_hello !== undefined) {
      resolved.say_hello = msg.say_hello;
    }
    else {
      resolved.say_hello = ''
    }

    return resolved;
    }
};

class greatingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type greatingResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type greatingResponse
    let len;
    let data = new greatingResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/greatingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14cdf907e5c7c7fd47292add15660f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new greatingResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: greatingRequest,
  Response: greatingResponse,
  md5sum() { return '6743e6c347f9c39f0a25ef9d7fce858a'; },
  datatype() { return 'beginner_tutorials/greating'; }
};
