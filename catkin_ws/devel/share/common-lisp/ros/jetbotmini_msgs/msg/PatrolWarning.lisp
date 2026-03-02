; Auto-generated. Do not edit!


(cl:in-package jetbotmini_msgs-msg)


;//! \htmlinclude PatrolWarning.msg.html

(cl:defclass <PatrolWarning> (roslisp-msg-protocol:ros-message)
  ((warning
    :reader warning
    :initarg :warning
    :type cl:integer
    :initform 0)
   (SetLoop
    :reader SetLoop
    :initarg :SetLoop
    :type cl:boolean
    :initform cl:nil)
   (close
    :reader close
    :initarg :close
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PatrolWarning (<PatrolWarning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolWarning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolWarning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbotmini_msgs-msg:<PatrolWarning> is deprecated: use jetbotmini_msgs-msg:PatrolWarning instead.")))

(cl:ensure-generic-function 'warning-val :lambda-list '(m))
(cl:defmethod warning-val ((m <PatrolWarning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-msg:warning-val is deprecated.  Use jetbotmini_msgs-msg:warning instead.")
  (warning m))

(cl:ensure-generic-function 'SetLoop-val :lambda-list '(m))
(cl:defmethod SetLoop-val ((m <PatrolWarning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-msg:SetLoop-val is deprecated.  Use jetbotmini_msgs-msg:SetLoop instead.")
  (SetLoop m))

(cl:ensure-generic-function 'close-val :lambda-list '(m))
(cl:defmethod close-val ((m <PatrolWarning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbotmini_msgs-msg:close-val is deprecated.  Use jetbotmini_msgs-msg:close instead.")
  (close m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolWarning>) ostream)
  "Serializes a message object of type '<PatrolWarning>"
  (cl:let* ((signed (cl:slot-value msg 'warning)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SetLoop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'close) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolWarning>) istream)
  "Deserializes a message object of type '<PatrolWarning>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'warning) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'SetLoop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'close) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolWarning>)))
  "Returns string type for a message object of type '<PatrolWarning>"
  "jetbotmini_msgs/PatrolWarning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolWarning)))
  "Returns string type for a message object of type 'PatrolWarning"
  "jetbotmini_msgs/PatrolWarning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolWarning>)))
  "Returns md5sum for a message object of type '<PatrolWarning>"
  "51654651f81a5e9bee47c3e8eb6bbc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolWarning)))
  "Returns md5sum for a message object of type 'PatrolWarning"
  "51654651f81a5e9bee47c3e8eb6bbc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolWarning>)))
  "Returns full string definition for message of type '<PatrolWarning>"
  (cl:format cl:nil "int32 warning~%bool  SetLoop~%bool  close~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolWarning)))
  "Returns full string definition for message of type 'PatrolWarning"
  (cl:format cl:nil "int32 warning~%bool  SetLoop~%bool  close~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolWarning>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolWarning>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolWarning
    (cl:cons ':warning (warning msg))
    (cl:cons ':SetLoop (SetLoop msg))
    (cl:cons ':close (close msg))
))
