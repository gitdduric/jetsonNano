;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::CamDevice)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'CamDevice (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::CAMDEVICE")
  (make-package "JETBOTMINI_MSGS::CAMDEVICE"))
(unless (find-package "JETBOTMINI_MSGS::CAMDEVICEREQUEST")
  (make-package "JETBOTMINI_MSGS::CAMDEVICEREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::CAMDEVICERESPONSE")
  (make-package "JETBOTMINI_MSGS::CAMDEVICERESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::CamDeviceRequest
  :super ros::object
  :slots (_GetGev ))

(defmethod jetbotmini_msgs::CamDeviceRequest
  (:init
   (&key
    ((:GetGev __GetGev) "")
    )
   (send-super :init)
   (setq _GetGev (string __GetGev))
   self)
  (:GetGev
   (&optional __GetGev)
   (if __GetGev (setq _GetGev __GetGev)) _GetGev)
  (:serialization-length
   ()
   (+
    ;; string _GetGev
    4 (length _GetGev)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _GetGev
       (write-long (length _GetGev) s) (princ _GetGev s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _GetGev
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _GetGev (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jetbotmini_msgs::CamDeviceResponse
  :super ros::object
  :slots (_camDevice ))

(defmethod jetbotmini_msgs::CamDeviceResponse
  (:init
   (&key
    ((:camDevice __camDevice) "")
    )
   (send-super :init)
   (setq _camDevice (string __camDevice))
   self)
  (:camDevice
   (&optional __camDevice)
   (if __camDevice (setq _camDevice __camDevice)) _camDevice)
  (:serialization-length
   ()
   (+
    ;; string _camDevice
    4 (length _camDevice)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camDevice
       (write-long (length _camDevice) s) (princ _camDevice s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camDevice
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camDevice (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jetbotmini_msgs::CamDevice
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::CamDevice :md5sum-) "8be1511d89aeca50b4c34cbc069c61f5")
(setf (get jetbotmini_msgs::CamDevice :datatype-) "jetbotmini_msgs/CamDevice")
(setf (get jetbotmini_msgs::CamDevice :request) jetbotmini_msgs::CamDeviceRequest)
(setf (get jetbotmini_msgs::CamDevice :response) jetbotmini_msgs::CamDeviceResponse)

(defmethod jetbotmini_msgs::CamDeviceRequest
  (:response () (instance jetbotmini_msgs::CamDeviceResponse :init)))

(setf (get jetbotmini_msgs::CamDeviceRequest :md5sum-) "8be1511d89aeca50b4c34cbc069c61f5")
(setf (get jetbotmini_msgs::CamDeviceRequest :datatype-) "jetbotmini_msgs/CamDeviceRequest")
(setf (get jetbotmini_msgs::CamDeviceRequest :definition-)
      "#request
string GetGev
---
#response
string camDevice

")

(setf (get jetbotmini_msgs::CamDeviceResponse :md5sum-) "8be1511d89aeca50b4c34cbc069c61f5")
(setf (get jetbotmini_msgs::CamDeviceResponse :datatype-) "jetbotmini_msgs/CamDeviceResponse")
(setf (get jetbotmini_msgs::CamDeviceResponse :definition-)
      "#request
string GetGev
---
#response
string camDevice

")



(provide :jetbotmini_msgs/CamDevice "8be1511d89aeca50b4c34cbc069c61f5")


