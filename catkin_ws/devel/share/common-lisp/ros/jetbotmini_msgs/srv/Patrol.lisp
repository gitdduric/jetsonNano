; Auto-generated. Do not edit!


(cl:in-package jetbotmini_msgs-srv)


;//! \htmlinclude Patrol-request.msg.html

(cl:defclass <Patrol-request> (roslisp-msg-protocol:ros-message)
  ((SetLoop
    :reader SetLoop
    :initarg :SetLoop
    :type cl:boolean
    :initform cl:nil)
   (Commond
    :reader Commond
    :initarg :Commond
    :type cl:string
    :initform "")
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (laserDistance
    :reader laserDistance
    :initarg :laserDistance
    :type cl:float
    :initform 0.0)
   (laserAngle
    :reader laserAngle
    :initarg :laserAngle
    :type cl:integer
    :initform 0))
)

(cl:defclass Patrol-request (<Patrol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Patrol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Patrol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<Patrol-request> is deprecated: use jetbotmini_msgs-srv:Patrol-request instead.")))

(cl:ensure-generic-function 'SetLoop-val :lambda-list '(m))
(cl:defmethod SetLoop-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:SetLoop-val is deprecated.  Use jetbotmini_msgs-srv:SetLoop instead.")
  (SetLoop m))

(cl:ensure-generic-function 'Commond-val :lambda-list '(m))
(cl:defmethod Commond-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:Commond-val is deprecated.  Use jetbotmini_msgs-srv:Commond instead.")
  (Commond m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:length-val is deprecated.  Use jetbotmini_msgs-srv:length instead.")
  (length m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:speed-val is deprecated.  Use jetbotmini_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'laserDistance-val :lambda-list '(m))
(cl:defmethod laserDistance-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:laserDistance-val is deprecated.  Use jetbotmini_msgs-srv:laserDistance instead.")
  (laserDistance m))

(cl:ensure-generic-function 'laserAngle-val :lambda-list '(m))
(cl:defmethod laserAngle-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:laserAngle-val is deprecated.  Use jetbotmini_msgs-srv:laserAngle instead.")
  (laserAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Patrol-request>) ostream)
  "Serializes a message object of type '<Patrol-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SetLoop) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Commond))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Commond))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laserDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'laserAngle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Patrol-request>) istream)
  "Deserializes a message object of type '<Patrol-request>"
    (cl:setf (cl:slot-value msg 'SetLoop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Commond) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Commond) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laserDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laserAngle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Patrol-request>)))
  "Returns string type for a service object of type '<Patrol-request>"
  "jetbotmini_msgs/PatrolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol-request)))
  "Returns string type for a service object of type 'Patrol-request"
  "jetbotmini_msgs/PatrolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Patrol-request>)))
  "Returns md5sum for a message object of type '<Patrol-request>"
  "58305e3e8d6898838f33185040fe9ed3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Patrol-request)))
  "Returns md5sum for a message object of type 'Patrol-request"
  "58305e3e8d6898838f33185040fe9ed3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Patrol-request>)))
  "Returns full string definition for message of type '<Patrol-request>"
  (cl:format cl:nil "#request~%bool    SetLoop~%string  Commond~%float32 length~%float32 speed~%float32 laserDistance~%int32   laserAngle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Patrol-request)))
  "Returns full string definition for message of type 'Patrol-request"
  (cl:format cl:nil "#request~%bool    SetLoop~%string  Commond~%float32 length~%float32 speed~%float32 laserDistance~%int32   laserAngle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Patrol-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'Commond))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Patrol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Patrol-request
    (cl:cons ':SetLoop (SetLoop msg))
    (cl:cons ':Commond (Commond msg))
    (cl:cons ':length (length msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':laserDistance (laserDistance msg))
    (cl:cons ':laserAngle (laserAngle msg))
))
;//! \htmlinclude Patrol-response.msg.html

(cl:defclass <Patrol-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Patrol-response (<Patrol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Patrol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Patrol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-srv:<Patrol-response> is deprecated: use jetbotmini_msgs-srv:Patrol-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Patrol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-srv:result-val is deprecated.  Use jetbotmini_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Patrol-response>) ostream)
  "Serializes a message object of type '<Patrol-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Patrol-response>) istream)
  "Deserializes a message object of type '<Patrol-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Patrol-response>)))
  "Returns string type for a service object of type '<Patrol-response>"
  "jetbotmini_msgs/PatrolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol-response)))
  "Returns string type for a service object of type 'Patrol-response"
  "jetbotmini_msgs/PatrolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Patrol-response>)))
  "Returns md5sum for a message object of type '<Patrol-response>"
  "58305e3e8d6898838f33185040fe9ed3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Patrol-response)))
  "Returns md5sum for a message object of type 'Patrol-response"
  "58305e3e8d6898838f33185040fe9ed3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Patrol-response>)))
  "Returns full string definition for message of type '<Patrol-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Patrol-response)))
  "Returns full string definition for message of type 'Patrol-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Patrol-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Patrol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Patrol-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Patrol)))
  'Patrol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Patrol)))
  'Patrol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol)))
  "Returns string type for a service object of type '<Patrol>"
  "jetbotmini_msgs/Patrol")