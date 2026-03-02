;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::Motor)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'Motor (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::MOTOR")
  (make-package "JETBOTMINI_MSGS::MOTOR"))
(unless (find-package "JETBOTMINI_MSGS::MOTORREQUEST")
  (make-package "JETBOTMINI_MSGS::MOTORREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::MOTORRESPONSE")
  (make-package "JETBOTMINI_MSGS::MOTORRESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::MotorRequest
  :super ros::object
  :slots (_rightspeed _leftspeed ))

(defmethod jetbotmini_msgs::MotorRequest
  (:init
   (&key
    ((:rightspeed __rightspeed) 0.0)
    ((:leftspeed __leftspeed) 0.0)
    )
   (send-super :init)
   (setq _rightspeed (float __rightspeed))
   (setq _leftspeed (float __leftspeed))
   self)
  (:rightspeed
   (&optional __rightspeed)
   (if __rightspeed (setq _rightspeed __rightspeed)) _rightspeed)
  (:leftspeed
   (&optional __leftspeed)
   (if __leftspeed (setq _leftspeed __leftspeed)) _leftspeed)
  (:serialization-length
   ()
   (+
    ;; float32 _rightspeed
    4
    ;; float32 _leftspeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rightspeed
       (sys::poke _rightspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _leftspeed
       (sys::poke _leftspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rightspeed
     (setq _rightspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _leftspeed
     (setq _leftspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::MotorResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::MotorResponse
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

(defclass jetbotmini_msgs::Motor
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::Motor :md5sum-) "d173c13dad4a63ef401052b6062c05e5")
(setf (get jetbotmini_msgs::Motor :datatype-) "jetbotmini_msgs/Motor")
(setf (get jetbotmini_msgs::Motor :request) jetbotmini_msgs::MotorRequest)
(setf (get jetbotmini_msgs::Motor :response) jetbotmini_msgs::MotorResponse)

(defmethod jetbotmini_msgs::MotorRequest
  (:response () (instance jetbotmini_msgs::MotorResponse :init)))

(setf (get jetbotmini_msgs::MotorRequest :md5sum-) "d173c13dad4a63ef401052b6062c05e5")
(setf (get jetbotmini_msgs::MotorRequest :datatype-) "jetbotmini_msgs/MotorRequest")
(setf (get jetbotmini_msgs::MotorRequest :definition-)
      "#request
float32 rightspeed
float32 leftspeed
---
#response
bool result

")

(setf (get jetbotmini_msgs::MotorResponse :md5sum-) "d173c13dad4a63ef401052b6062c05e5")
(setf (get jetbotmini_msgs::MotorResponse :datatype-) "jetbotmini_msgs/MotorResponse")
(setf (get jetbotmini_msgs::MotorResponse :definition-)
      "#request
float32 rightspeed
float32 leftspeed
---
#response
bool result

")



(provide :jetbotmini_msgs/Motor "d173c13dad4a63ef401052b6062c05e5")


