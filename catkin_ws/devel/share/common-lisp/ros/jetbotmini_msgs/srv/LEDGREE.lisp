; Auto-generated. Do not edit!


(cl:in-package jetbotmini_msgs-srv)


;//! \htmlinclude LEDGREE-request.msg.html

(cl:defclass <LEDGREE-request> (roslisp-msg-protocol:ros-message)
  ((ledgree
    :reader ledgree
    :initarg :ledgree
    :type cl:integer
    :initform 0))
)

(cl:defclass LEDGREE-request (<LEDGREE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDGREE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDGREE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<LEDGREE-request> is deprecated: use jetbotmini_msgs-srv:LEDGREE-request instead.")))

(cl:ensure-generic-function 'ledgree-val :lambda-list '(m))
(cl:defmethod ledgree-val ((m <LEDGREE-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:ledgree-val is deprecated.  Use jetbotmini_msgs-srv:ledgree instead.")
  (ledgree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDGREE-request>) ostream)
  "Serializes a message object of type '<LEDGREE-request>"
  (cl:let* ((signed (cl:slot-value msg 'ledgree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDGREE-request>) istream)
  "Deserializes a message object of type '<LEDGREE-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledgree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDGREE-request>)))
  "Returns string type for a service object of type '<LEDGREE-request>"
  "jetbotmini_msgs/LEDGREERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDGREE-request)))
  "Returns string type for a service object of type 'LEDGREE-request"
  "jetbotmini_msgs/LEDGREERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDGREE-request>)))
  "Returns md5sum for a message object of type '<LEDGREE-request>"
  "86491fb7054f298518353955ffe73456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDGREE-request)))
  "Returns md5sum for a message object of type 'LEDGREE-request"
  "86491fb7054f298518353955ffe73456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDGREE-request>)))
  "Returns full string definition for message of type '<LEDGREE-request>"
  (cl:format cl:nil "#request~%int32 ledgree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDGREE-request)))
  "Returns full string definition for message of type 'LEDGREE-request"
  (cl:format cl:nil "#request~%int32 ledgree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDGREE-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDGREE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDGREE-request
    (cl:cons ':ledgree (ledgree msg))
))
;//! \htmlinclude LEDGREE-response.msg.html

(cl:defclass <LEDGREE-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LEDGREE-response (<LEDGREE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDGREE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDGREE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<LEDGREE-response> is deprecated: use jetbotmini_msgs-srv:LEDGREE-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LEDGREE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:result-val is deprecated.  Use jetbotmini_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDGREE-response>) ostream)
  "Serializes a message object of type '<LEDGREE-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDGREE-response>) istream)
  "Deserializes a message object of type '<LEDGREE-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDGREE-response>)))
  "Returns string type for a service object of type '<LEDGREE-response>"
  "jetbotmini_msgs/LEDGREEResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDGREE-response)))
  "Returns string type for a service object of type 'LEDGREE-response"
  "jetbotmini_msgs/LEDGREEResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDGREE-response>)))
  "Returns md5sum for a message object of type '<LEDGREE-response>"
  "86491fb7054f298518353955ffe73456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDGREE-response)))
  "Returns md5sum for a message object of type 'LEDGREE-response"
  "86491fb7054f298518353955ffe73456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDGREE-response>)))
  "Returns full string definition for message of type '<LEDGREE-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDGREE-response)))
  "Returns full string definition for message of type 'LEDGREE-response"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDGREE-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDGREE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDGREE-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LEDGREE)))
  'LEDGREE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LEDGREE)))
  'LEDGREE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDGREE)))
  "Returns string type for a service object of type '<LEDGREE>"
  "jetbotmini_msgs/LEDGREE")