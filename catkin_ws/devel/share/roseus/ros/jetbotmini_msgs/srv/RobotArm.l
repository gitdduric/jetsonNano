;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::RobotArm)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'RobotArm (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::ROBOTARM")
  (make-package "JETBOTMINI_MSGS::ROBOTARM"))
(unless (find-package "JETBOTMINI_MSGS::ROBOTARMREQUEST")
  (make-package "JETBOTMINI_MSGS::ROBOTARMREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::ROBOTARMRESPONSE")
  (make-package "JETBOTMINI_MSGS::ROBOTARMRESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::RobotArmRequest
  :super ros::object
  :slots (_apply ))

(defmethod jetbotmini_msgs::RobotArmRequest
  (:init
   (&key
    ((:apply __apply) "")
    )
   (send-super :init)
   (setq _apply (string __apply))
   self)
  (:apply
   (&optional __apply)
   (if __apply (setq _apply __apply)) _apply)
  (:serialization-length
   ()
   (+
    ;; string _apply
    4 (length _apply)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _apply
       (write-long (length _apply) s) (princ _apply s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _apply
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _apply (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jetbotmini_msgs::RobotArmResponse
  :super ros::object
  :slots (_RobotArm ))

(defmethod jetbotmini_msgs::RobotArmResponse
  (:init
   (&key
    ((:RobotArm __RobotArm) (instance jetbotmini_msgs::Arm :init))
    )
   (send-super :init)
   (setq _RobotArm __RobotArm)
   self)
  (:RobotArm
   (&rest __RobotArm)
   (if (keywordp (car __RobotArm))
       (send* _RobotArm __RobotArm)
     (progn
       (if __RobotArm (setq _RobotArm (car __RobotArm)))
       _RobotArm)))
  (:serialization-length
   ()
   (+
    ;; jetbotmini_msgs/Arm _RobotArm
    (send _RobotArm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetbotmini_msgs/Arm _RobotArm
       (send _RobotArm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetbotmini_msgs/Arm _RobotArm
     (send _RobotArm :deserialize buf ptr-) (incf ptr- (send _RobotArm :serialization-length))
   ;;
   self)
  )

(defclass jetbotmini_msgs::RobotArm
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::RobotArm :md5sum-) "02b16e175f9698037e15289959eba75b")
(setf (get jetbotmini_msgs::RobotArm :datatype-) "jetbotmini_msgs/RobotArm")
(setf (get jetbotmini_msgs::RobotArm :request) jetbotmini_msgs::RobotArmRequest)
(setf (get jetbotmini_msgs::RobotArm :response) jetbotmini_msgs::RobotArmResponse)

(defmethod jetbotmini_msgs::RobotArmRequest
  (:response () (instance jetbotmini_msgs::RobotArmResponse :init)))

(setf (get jetbotmini_msgs::RobotArmRequest :md5sum-) "02b16e175f9698037e15289959eba75b")
(setf (get jetbotmini_msgs::RobotArmRequest :datatype-) "jetbotmini_msgs/RobotArmRequest")
(setf (get jetbotmini_msgs::RobotArmRequest :definition-)
      "#request
string apply
---
#response
Arm RobotArm


================================================================================
MSG: jetbotmini_msgs/Arm
Joint[] joint

================================================================================
MSG: jetbotmini_msgs/Joint
int32 id
int32 run_time
float32 angle
")

(setf (get jetbotmini_msgs::RobotArmResponse :md5sum-) "02b16e175f9698037e15289959eba75b")
(setf (get jetbotmini_msgs::RobotArmResponse :datatype-) "jetbotmini_msgs/RobotArmResponse")
(setf (get jetbotmini_msgs::RobotArmResponse :definition-)
      "#request
string apply
---
#response
Arm RobotArm


================================================================================
MSG: jetbotmini_msgs/Arm
Joint[] joint

================================================================================
MSG: jetbotmini_msgs/Joint
int32 id
int32 run_time
float32 angle
")



(provide :jetbotmini_msgs/RobotArm "02b16e175f9698037e15289959eba75b")


