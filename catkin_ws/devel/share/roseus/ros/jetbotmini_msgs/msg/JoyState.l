;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::JoyState)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'JoyState (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::JOYSTATE")
  (make-package "JETBOTMINI_MSGS::JOYSTATE"))

(in-package "ROS")
;;//! \htmlinclude JoyState.msg.html


(defclass jetbotmini_msgs::JoyState
  :super ros::object
  :slots (_state ))

(defmethod jetbotmini_msgs::JoyState
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jetbotmini_msgs::JoyState :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get jetbotmini_msgs::JoyState :datatype-) "jetbotmini_msgs/JoyState")
(setf (get jetbotmini_msgs::JoyState :definition-)
      "bool state
")



(provide :jetbotmini_msgs/JoyState "001fde3cab9e313a150416ff09c08ee4")


