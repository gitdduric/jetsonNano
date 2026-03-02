;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::RGBLight)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'RGBLight (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::RGBLIGHT")
  (make-package "JETBOTMINI_MSGS::RGBLIGHT"))
(unless (find-package "JETBOTMINI_MSGS::RGBLIGHTREQUEST")
  (make-package "JETBOTMINI_MSGS::RGBLIGHTREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::RGBLIGHTRESPONSE")
  (make-package "JETBOTMINI_MSGS::RGBLIGHTRESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::RGBLightRequest
  :super ros::object
  :slots (_effect _speed ))

(defmethod jetbotmini_msgs::RGBLightRequest
  (:init
   (&key
    ((:effect __effect) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _effect (round __effect))
   (setq _speed (round __speed))
   self)
  (:effect
   (&optional __effect)
   (if __effect (setq _effect __effect)) _effect)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int32 _effect
    4
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _effect
       (write-long _effect s)
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _effect
     (setq _effect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::RGBLightResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::RGBLightResponse
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

(defclass jetbotmini_msgs::RGBLight
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::RGBLight :md5sum-) "4abffe91f7c3570fa771519fedadcf37")
(setf (get jetbotmini_msgs::RGBLight :datatype-) "jetbotmini_msgs/RGBLight")
(setf (get jetbotmini_msgs::RGBLight :request) jetbotmini_msgs::RGBLightRequest)
(setf (get jetbotmini_msgs::RGBLight :response) jetbotmini_msgs::RGBLightResponse)

(defmethod jetbotmini_msgs::RGBLightRequest
  (:response () (instance jetbotmini_msgs::RGBLightResponse :init)))

(setf (get jetbotmini_msgs::RGBLightRequest :md5sum-) "4abffe91f7c3570fa771519fedadcf37")
(setf (get jetbotmini_msgs::RGBLightRequest :datatype-) "jetbotmini_msgs/RGBLightRequest")
(setf (get jetbotmini_msgs::RGBLightRequest :definition-)
      "#request
int32 effect
int32 speed
---
#response
bool result

")

(setf (get jetbotmini_msgs::RGBLightResponse :md5sum-) "4abffe91f7c3570fa771519fedadcf37")
(setf (get jetbotmini_msgs::RGBLightResponse :datatype-) "jetbotmini_msgs/RGBLightResponse")
(setf (get jetbotmini_msgs::RGBLightResponse :definition-)
      "#request
int32 effect
int32 speed
---
#response
bool result

")



(provide :jetbotmini_msgs/RGBLight "4abffe91f7c3570fa771519fedadcf37")


