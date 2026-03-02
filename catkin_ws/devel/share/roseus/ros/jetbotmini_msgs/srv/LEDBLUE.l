;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::LEDBLUE)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'LEDBLUE (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::LEDBLUE")
  (make-package "JETBOTMINI_MSGS::LEDBLUE"))
(unless (find-package "JETBOTMINI_MSGS::LEDBLUEREQUEST")
  (make-package "JETBOTMINI_MSGS::LEDBLUEREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::LEDBLUERESPONSE")
  (make-package "JETBOTMINI_MSGS::LEDBLUERESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::LEDBLUERequest
  :super ros::object
  :slots (_ledblue ))

(defmethod jetbotmini_msgs::LEDBLUERequest
  (:init
   (&key
    ((:ledblue __ledblue) 0)
    )
   (send-super :init)
   (setq _ledblue (round __ledblue))
   self)
  (:ledblue
   (&optional __ledblue)
   (if __ledblue (setq _ledblue __ledblue)) _ledblue)
  (:serialization-length
   ()
   (+
    ;; int32 _ledblue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ledblue
       (write-long _ledblue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ledblue
     (setq _ledblue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::LEDBLUEResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::LEDBLUEResponse
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

(defclass jetbotmini_msgs::LEDBLUE
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::LEDBLUE :md5sum-) "47351cc96df61967f8e7918f3664cc29")
(setf (get jetbotmini_msgs::LEDBLUE :datatype-) "jetbotmini_msgs/LEDBLUE")
(setf (get jetbotmini_msgs::LEDBLUE :request) jetbotmini_msgs::LEDBLUERequest)
(setf (get jetbotmini_msgs::LEDBLUE :response) jetbotmini_msgs::LEDBLUEResponse)

(defmethod jetbotmini_msgs::LEDBLUERequest
  (:response () (instance jetbotmini_msgs::LEDBLUEResponse :init)))

(setf (get jetbotmini_msgs::LEDBLUERequest :md5sum-) "47351cc96df61967f8e7918f3664cc29")
(setf (get jetbotmini_msgs::LEDBLUERequest :datatype-) "jetbotmini_msgs/LEDBLUERequest")
(setf (get jetbotmini_msgs::LEDBLUERequest :definition-)
      "#request
int32 ledblue
---
#response
bool result

")

(setf (get jetbotmini_msgs::LEDBLUEResponse :md5sum-) "47351cc96df61967f8e7918f3664cc29")
(setf (get jetbotmini_msgs::LEDBLUEResponse :datatype-) "jetbotmini_msgs/LEDBLUEResponse")
(setf (get jetbotmini_msgs::LEDBLUEResponse :definition-)
      "#request
int32 ledblue
---
#response
bool result

")



(provide :jetbotmini_msgs/LEDBLUE "47351cc96df61967f8e7918f3664cc29")


