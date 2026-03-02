;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::Buzzer)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'Buzzer (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::BUZZER")
  (make-package "JETBOTMINI_MSGS::BUZZER"))
(unless (find-package "JETBOTMINI_MSGS::BUZZERREQUEST")
  (make-package "JETBOTMINI_MSGS::BUZZERREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::BUZZERRESPONSE")
  (make-package "JETBOTMINI_MSGS::BUZZERRESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::BuzzerRequest
  :super ros::object
  :slots (_buzzer ))

(defmethod jetbotmini_msgs::BuzzerRequest
  (:init
   (&key
    ((:buzzer __buzzer) 0)
    )
   (send-super :init)
   (setq _buzzer (round __buzzer))
   self)
  (:buzzer
   (&optional __buzzer)
   (if __buzzer (setq _buzzer __buzzer)) _buzzer)
  (:serialization-length
   ()
   (+
    ;; int32 _buzzer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _buzzer
       (write-long _buzzer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _buzzer
     (setq _buzzer (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::BuzzerResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::BuzzerResponse
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

(defclass jetbotmini_msgs::Buzzer
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::Buzzer :md5sum-) "32ecc8168750cdefd185aff218d2ce5e")
(setf (get jetbotmini_msgs::Buzzer :datatype-) "jetbotmini_msgs/Buzzer")
(setf (get jetbotmini_msgs::Buzzer :request) jetbotmini_msgs::BuzzerRequest)
(setf (get jetbotmini_msgs::Buzzer :response) jetbotmini_msgs::BuzzerResponse)

(defmethod jetbotmini_msgs::BuzzerRequest
  (:response () (instance jetbotmini_msgs::BuzzerResponse :init)))

(setf (get jetbotmini_msgs::BuzzerRequest :md5sum-) "32ecc8168750cdefd185aff218d2ce5e")
(setf (get jetbotmini_msgs::BuzzerRequest :datatype-) "jetbotmini_msgs/BuzzerRequest")
(setf (get jetbotmini_msgs::BuzzerRequest :definition-)
      "#request
int32 buzzer
---
#response
bool result
")

(setf (get jetbotmini_msgs::BuzzerResponse :md5sum-) "32ecc8168750cdefd185aff218d2ce5e")
(setf (get jetbotmini_msgs::BuzzerResponse :datatype-) "jetbotmini_msgs/BuzzerResponse")
(setf (get jetbotmini_msgs::BuzzerResponse :definition-)
      "#request
int32 buzzer
---
#response
bool result
")



(provide :jetbotmini_msgs/Buzzer "32ecc8168750cdefd185aff218d2ce5e")


