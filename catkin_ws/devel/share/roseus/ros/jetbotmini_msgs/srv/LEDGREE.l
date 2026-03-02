;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::LEDGREE)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'LEDGREE (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::LEDGREE")
  (make-package "JETBOTMINI_MSGS::LEDGREE"))
(unless (find-package "JETBOTMINI_MSGS::LEDGREEREQUEST")
  (make-package "JETBOTMINI_MSGS::LEDGREEREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::LEDGREERESPONSE")
  (make-package "JETBOTMINI_MSGS::LEDGREERESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::LEDGREERequest
  :super ros::object
  :slots (_ledgree ))

(defmethod jetbotmini_msgs::LEDGREERequest
  (:init
   (&key
    ((:ledgree __ledgree) 0)
    )
   (send-super :init)
   (setq _ledgree (round __ledgree))
   self)
  (:ledgree
   (&optional __ledgree)
   (if __ledgree (setq _ledgree __ledgree)) _ledgree)
  (:serialization-length
   ()
   (+
    ;; int32 _ledgree
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ledgree
       (write-long _ledgree s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ledgree
     (setq _ledgree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::LEDGREEResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::LEDGREEResponse
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

(defclass jetbotmini_msgs::LEDGREE
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::LEDGREE :md5sum-) "86491fb7054f298518353955ffe73456")
(setf (get jetbotmini_msgs::LEDGREE :datatype-) "jetbotmini_msgs/LEDGREE")
(setf (get jetbotmini_msgs::LEDGREE :request) jetbotmini_msgs::LEDGREERequest)
(setf (get jetbotmini_msgs::LEDGREE :response) jetbotmini_msgs::LEDGREEResponse)

(defmethod jetbotmini_msgs::LEDGREERequest
  (:response () (instance jetbotmini_msgs::LEDGREEResponse :init)))

(setf (get jetbotmini_msgs::LEDGREERequest :md5sum-) "86491fb7054f298518353955ffe73456")
(setf (get jetbotmini_msgs::LEDGREERequest :datatype-) "jetbotmini_msgs/LEDGREERequest")
(setf (get jetbotmini_msgs::LEDGREERequest :definition-)
      "#request
int32 ledgree
---
#response
bool result

")

(setf (get jetbotmini_msgs::LEDGREEResponse :md5sum-) "86491fb7054f298518353955ffe73456")
(setf (get jetbotmini_msgs::LEDGREEResponse :datatype-) "jetbotmini_msgs/LEDGREEResponse")
(setf (get jetbotmini_msgs::LEDGREEResponse :definition-)
      "#request
int32 ledgree
---
#response
bool result

")



(provide :jetbotmini_msgs/LEDGREE "86491fb7054f298518353955ffe73456")


