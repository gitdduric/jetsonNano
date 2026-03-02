;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::Patrol)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'Patrol (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::PATROL")
  (make-package "JETBOTMINI_MSGS::PATROL"))
(unless (find-package "JETBOTMINI_MSGS::PATROLREQUEST")
  (make-package "JETBOTMINI_MSGS::PATROLREQUEST"))
(unless (find-package "JETBOTMINI_MSGS::PATROLRESPONSE")
  (make-package "JETBOTMINI_MSGS::PATROLRESPONSE"))

(in-package "ROS")





(defclass jetbotmini_msgs::PatrolRequest
  :super ros::object
  :slots (_SetLoop _Commond _length _speed _laserDistance _laserAngle ))

(defmethod jetbotmini_msgs::PatrolRequest
  (:init
   (&key
    ((:SetLoop __SetLoop) nil)
    ((:Commond __Commond) "")
    ((:length __length) 0.0)
    ((:speed __speed) 0.0)
    ((:laserDistance __laserDistance) 0.0)
    ((:laserAngle __laserAngle) 0)
    )
   (send-super :init)
   (setq _SetLoop __SetLoop)
   (setq _Commond (string __Commond))
   (setq _length (float __length))
   (setq _speed (float __speed))
   (setq _laserDistance (float __laserDistance))
   (setq _laserAngle (round __laserAngle))
   self)
  (:SetLoop
   (&optional __SetLoop)
   (if __SetLoop (setq _SetLoop __SetLoop)) _SetLoop)
  (:Commond
   (&optional __Commond)
   (if __Commond (setq _Commond __Commond)) _Commond)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:laserDistance
   (&optional __laserDistance)
   (if __laserDistance (setq _laserDistance __laserDistance)) _laserDistance)
  (:laserAngle
   (&optional __laserAngle)
   (if __laserAngle (setq _laserAngle __laserAngle)) _laserAngle)
  (:serialization-length
   ()
   (+
    ;; bool _SetLoop
    1
    ;; string _Commond
    4 (length _Commond)
    ;; float32 _length
    4
    ;; float32 _speed
    4
    ;; float32 _laserDistance
    4
    ;; int32 _laserAngle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _SetLoop
       (if _SetLoop (write-byte -1 s) (write-byte 0 s))
     ;; string _Commond
       (write-long (length _Commond) s) (princ _Commond s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _laserDistance
       (sys::poke _laserDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _laserAngle
       (write-long _laserAngle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _SetLoop
     (setq _SetLoop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _Commond
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Commond (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _laserDistance
     (setq _laserDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _laserAngle
     (setq _laserAngle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetbotmini_msgs::PatrolResponse
  :super ros::object
  :slots (_result ))

(defmethod jetbotmini_msgs::PatrolResponse
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

(defclass jetbotmini_msgs::Patrol
  :super ros::object
  :slots ())

(setf (get jetbotmini_msgs::Patrol :md5sum-) "58305e3e8d6898838f33185040fe9ed3")
(setf (get jetbotmini_msgs::Patrol :datatype-) "jetbotmini_msgs/Patrol")
(setf (get jetbotmini_msgs::Patrol :request) jetbotmini_msgs::PatrolRequest)
(setf (get jetbotmini_msgs::Patrol :response) jetbotmini_msgs::PatrolResponse)

(defmethod jetbotmini_msgs::PatrolRequest
  (:response () (instance jetbotmini_msgs::PatrolResponse :init)))

(setf (get jetbotmini_msgs::PatrolRequest :md5sum-) "58305e3e8d6898838f33185040fe9ed3")
(setf (get jetbotmini_msgs::PatrolRequest :datatype-) "jetbotmini_msgs/PatrolRequest")
(setf (get jetbotmini_msgs::PatrolRequest :definition-)
      "#request
bool    SetLoop
string  Commond
float32 length
float32 speed
float32 laserDistance
int32   laserAngle
---
#response
bool result
")

(setf (get jetbotmini_msgs::PatrolResponse :md5sum-) "58305e3e8d6898838f33185040fe9ed3")
(setf (get jetbotmini_msgs::PatrolResponse :datatype-) "jetbotmini_msgs/PatrolResponse")
(setf (get jetbotmini_msgs::PatrolResponse :definition-)
      "#request
bool    SetLoop
string  Commond
float32 length
float32 speed
float32 laserDistance
int32   laserAngle
---
#response
bool result
")



(provide :jetbotmini_msgs/Patrol "58305e3e8d6898838f33185040fe9ed3")


