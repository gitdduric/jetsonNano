;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::Servo)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'Servo (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::SERVO")
  (make-package "JETBOTMINI_MSGS::SERVO"))
(unless (find-package "JETBOTMINI_MSGS::SERVOREQUEST")
  (make-package "JETBOTMINI_MSGS::SERVOREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::SERVORESPONSE")
  (make-package "JETBOTMINI_MSGS::SERVORESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::ServoRequest
  :super ros::object
  :slots (_servoid _angle ))

(defmethod jetbotmini_msgs::ServoRequest
  (:init
   (&key
    ((:servoid __servoid) 0)
    ((:angle __angle) 0)
    )
   (send-super :init)
   (setq _servoid (round __servoid))
   (setq _angle (round __angle))
   self)
  (:servoid
   (&optional __servoid)
   (if __servoid (setq _servoid __servoid)) _servoid)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _servoid
    4
    ;; int32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _servoid
       (write-long _servoid s)
     ;; int32 _angle
       (write-long _angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _servoid
     (setq _servoid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle
     (setq _angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::ServoResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::ServoResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jetbotmini_msgs::Servo
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::Servo :md5sum-) "ec6b8e444e275e14bfe3fc52ab8f747e")
(setf (get jetbotmini_msgs::Servo :datatype-) "jetbotmini_msgs/Servo")
(setf (get jetbotmini_msgs::Servo :request) jetbotmini_msgs::ServoRequest)
(setf (get jetbotmini_msgs::Servo :response) jetbotmini_msgs::ServoResponse)

(defmethod jetbotmini_msgs::ServoRequest
  (:response () (instance jetbotmini_msgs::ServoResponse :init)))

(setf (get jetbotmini_msgs::ServoRequest :md5sum-) "ec6b8e444e275e14bfe3fc52ab8f747e")
(setf (get jetbotmini_msgs::ServoRequest :datatype-) "jetbotmini_msgs/ServoRequest")
(setf (get jetbotmini_msgs::ServoRequest :definition-)
      "#request
int32 servoid
int32 angle
---
#response
bool result

")

(setf (get jetbotmini_msgs::ServoResponse :md5sum-) "ec6b8e444e275e14bfe3fc52ab8f747e")
(setf (get jetbotmini_msgs::ServoResponse :datatype-) "jetbotmini_msgs/ServoResponse")
(setf (get jetbotmini_msgs::ServoResponse :definition-)
      "#request
int32 servoid
int32 angle
---
#response
bool result

")



(provide :jetbotmini_msgs/Servo "ec6b8e444e275e14bfe3fc52ab8f747e")


