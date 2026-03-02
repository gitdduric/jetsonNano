;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::Arm)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'Arm (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::ARM")
  (make-package "JETBOTMINI_MSGS::ARM"))

(in-package "ROS")
;;//! \htmlinclude Arm.msg.html


(defclass jetbotmini_msgs::Arm
  :super ros::object
  :slots (_joint ))

(defmethod jetbotmini_msgs::Arm
  (:init
   (&key
    ((:joint __joint) (let (r) (dotimes (i 0) (push (instance jetbotmini_msgs::Joint :init) r)) r))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&rest __joint)
   (if (keywordp (car __joint))
       (send* _joint __joint)
     (progn
       (if __joint (setq _joint (car __joint)))
       _joint)))
  (:serialization-length
   ()
   (+
    ;; jetbotmini_msgs/Joint[] _joint
    (apply #'+ (send-all _joint :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetbotmini_msgs/Joint[] _joint
     (write-long (length _joint) s)
     (dolist (elem _joint)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetbotmini_msgs/Joint[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (let (r) (dotimes (i n) (push (instance jetbotmini_msgs::Joint :init) r)) r))
     (dolist (elem- _joint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jetbotmini_msgs::Arm :md5sum-) "b46d7c4342769b3898ee5c56a7392dd2")
(setf (get jetbotmini_msgs::Arm :datatype-) "jetbotmini_msgs/Arm")
(setf (get jetbotmini_msgs::Arm :definition-)
      "Joint[] joint

================================================================================
MSG: jetbotmini_msgs/Joint
int32 id
int32 run_time
float32 angle

")



(provide :jetbotmini_msgs/Arm "b46d7c4342769b3898ee5c56a7392dd2")


