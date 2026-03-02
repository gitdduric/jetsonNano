; Auto-generated. Do not edit!


(cl:in-package jetbotmini_msgs-srv)


;//! \htmlinclude Motor-request.msg.html

(cl:defclass <Motor-request> (roslisp-msg-protocol:ros-message)
  ((rightspeed
    :reader rightspeed
    :initarg :rightspeed
    :type cl:float
    :initform 0.0)
   (leftspeed
    :reader leftspeed
    :initarg :leftspeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Motor-request (<Motor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<Motor-request> is deprecated: use jetbotmini_msgs-srv:Motor-request instead.")))

(cl:ensure-generic-function 'rightspeed-val :lambda-list '(m))
(cl:defmethod rightspeed-val ((m <Motor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:rightspeed-val is deprecated.  Use jetbotmini_msgs-srv:rightspeed instead.")
  (rightspeed m))

(cl:ensure-generic-function 'leftspeed-val :lambda-list '(m))
(cl:defmethod leftspeed-val ((m <Motor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:leftspeed-val is deprecated.  Use jetbotmini_msgs-srv:leftspeed instead.")
  (leftspeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor-request>) ostream)
  "Serializes a message object of type '<Motor-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor-request>) istream)
  "Deserializes a message object of type '<Motor-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftspeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor-request>)))
  "Returns string type for a service object of type '<Motor-request>"
  "jetbotmini_msgs/MotorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor-request)))
  "Returns string type for a service object of type 'Motor-request"
  "jetbotmini_msgs/MotorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor-request>)))
  "Returns md5sum for a message object of type '<Motor-request>"
  "d173c13dad4a63ef401052b6062c05e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor-request)))
  "Returns md5sum for a message object of type 'Motor-request"
  "d173c13dad4a63ef401052b6062c05e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor-request>)))
  "Returns full string definition for message of type '<Motor-request>"
  (cl:format cl:nil "#request~%float32 rightspeed~%float32 leftspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor-request)))
  "Returns full string definition for message of type 'Motor-request"
  (cl:format cl:nil "#request~%float32 rightspeed~%float32 leftspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor-request
    (cl:cons ':rightspeed (rightspeed msg))
    (cl:cons ':leftspeed (leftspeed msg))
))
;//! \htmlinclude Motor-response.msg.html

(cl:defclass <Motor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Motor-response (<Motor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<Motor-response> is deprecated: use jetbotmini_msgs-srv:Motor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Motor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:result-val is deprecated.  Use jetbotmini_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor-response>) ostream)
  "Serializes a message object of type '<Motor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor-response>) istream)
  "Deserializes a message object of type '<Motor-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor-response>)))
  "Returns string type for a service object of type '<Motor-response>"
  "jetbotmini_msgs/MotorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor-response)))
  "Returns string type for a service object of type 'Motor-response"
  "jetbotmini_msgs/MotorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor-response>)))
  "Returns md5sum for a message object of type '<Motor-response>"
  "d173c13dad4a63ef401052b6062c05e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor-response)))
  "Returns md5sum for a message object of type 'Motor-response"
  "d173c13dad4a63ef401052b6062c05e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor-response>)))
  "Returns full string definition for message of type '<Motor-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor-response)))
  "Returns full string definition for message of type 'Motor-response"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Motor)))
  'Motor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Motor)))
  'Motor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor)))
  "Returns string type for a service object of type '<Motor>"
  "jetbotmini_msgs/Motor")