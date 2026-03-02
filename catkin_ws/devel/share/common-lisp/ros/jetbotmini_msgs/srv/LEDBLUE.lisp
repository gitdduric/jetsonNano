; Auto-generated. Do not edit!


(cl:in-package jetbotmini_msgs-srv)


;//! \htmlinclude LEDBLUE-request.msg.html

(cl:defclass <LEDBLUE-request> (roslisp-msg-protocol:ros-message)
  ((ledblue
    :reader ledblue
    :initarg :ledblue
    :type cl:integer
    :initform 0))
)

(cl:defclass LEDBLUE-request (<LEDBLUE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDBLUE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDBLUE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<LEDBLUE-request> is deprecated: use jetbotmini_msgs-srv:LEDBLUE-request instead.")))

(cl:ensure-generic-function 'ledblue-val :lambda-list '(m))
(cl:defmethod ledblue-val ((m <LEDBLUE-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:ledblue-val is deprecated.  Use jetbotmini_msgs-srv:ledblue instead.")
  (ledblue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDBLUE-request>) ostream)
  "Serializes a message object of type '<LEDBLUE-request>"
  (cl:let* ((signed (cl:slot-value msg 'ledblue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDBLUE-request>) istream)
  "Deserializes a message object of type '<LEDBLUE-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledblue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDBLUE-request>)))
  "Returns string type for a service object of type '<LEDBLUE-request>"
  "jetbotmini_msgs/LEDBLUERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDBLUE-request)))
  "Returns string type for a service object of type 'LEDBLUE-request"
  "jetbotmini_msgs/LEDBLUERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDBLUE-request>)))
  "Returns md5sum for a message object of type '<LEDBLUE-request>"
  "47351cc96df61967f8e7918f3664cc29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDBLUE-request)))
  "Returns md5sum for a message object of type 'LEDBLUE-request"
  "47351cc96df61967f8e7918f3664cc29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDBLUE-request>)))
  "Returns full string definition for message of type '<LEDBLUE-request>"
  (cl:format cl:nil "#request~%int32 ledblue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDBLUE-request)))
  "Returns full string definition for message of type 'LEDBLUE-request"
  (cl:format cl:nil "#request~%int32 ledblue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDBLUE-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDBLUE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDBLUE-request
    (cl:cons ':ledblue (ledblue msg))
))
;//! \htmlinclude LEDBLUE-response.msg.html

(cl:defclass <LEDBLUE-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LEDBLUE-response (<LEDBLUE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDBLUE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDBLUE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<LEDBLUE-response> is deprecated: use jetbotmini_msgs-srv:LEDBLUE-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LEDBLUE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:result-val is deprecated.  Use jetbotmini_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDBLUE-response>) ostream)
  "Serializes a message object of type '<LEDBLUE-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDBLUE-response>) istream)
  "Deserializes a message object of type '<LEDBLUE-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDBLUE-response>)))
  "Returns string type for a service object of type '<LEDBLUE-response>"
  "jetbotmini_msgs/LEDBLUEResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDBLUE-response)))
  "Returns string type for a service object of type 'LEDBLUE-response"
  "jetbotmini_msgs/LEDBLUEResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDBLUE-response>)))
  "Returns md5sum for a message object of type '<LEDBLUE-response>"
  "47351cc96df61967f8e7918f3664cc29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDBLUE-response)))
  "Returns md5sum for a message object of type 'LEDBLUE-response"
  "47351cc96df61967f8e7918f3664cc29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDBLUE-response>)))
  "Returns full string definition for message of type '<LEDBLUE-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDBLUE-response)))
  "Returns full string definition for message of type 'LEDBLUE-response"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDBLUE-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDBLUE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDBLUE-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LEDBLUE)))
  'LEDBLUE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LEDBLUE)))
  'LEDBLUE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDBLUE)))
  "Returns string type for a service object of type '<LEDBLUE>"
  "jetbotmini_msgs/LEDBLUE")