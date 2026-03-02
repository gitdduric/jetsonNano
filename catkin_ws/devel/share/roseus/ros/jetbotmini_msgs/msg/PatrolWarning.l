;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::PatrolWarning)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'PatrolWarning (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::PATROLWARNING")
  (make-package "JETBOTMINI_MSGS::PATROLWARNING"))

(in-package "ROS")
;;//! \htmlinclude PatrolWarning.msg.html


(defclass jetbotmini_msgs::PatrolWarning
  :super ros::object
  :slots (_warning _SetLoop _close ))

(defmethod jetbotmini_msgs::PatrolWarning
  (:init
   (&key
    ((:warning __warning) 0)
    ((:SetLoop __SetLoop) nil)
    ((:close __close) nil)
    )
   (send-super :init)
   (setq _warning (round __warning))
   (setq _SetLoop __SetLoop)
   (setq _close __close)
   self)
  (:warning
   (&optional __warning)
   (if __warning (setq _warning __warning)) _warning)
  (:SetLoop
   (&optional __SetLoop)
   (if __SetLoop (setq _SetLoop __SetLoop)) _SetLoop)
  (:close
   (&optional __close)
   (if __close (setq _close __close)) _close)
  (:serialization-length
   ()
   (+
    ;; int32 _warning
    4
    ;; bool _SetLoop
    1
    ;; bool _close
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _warning
       (write-long _warning s)
     ;; bool _SetLoop
       (if _SetLoop (write-byte -1 s) (write-byte 0 s))
     ;; bool _close
       (if _close (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _warning
     (setq _warning (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _SetLoop
     (setq _SetLoop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _close
     (setq _close (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jetbotmini_msgs::PatrolWarning :md5sum-) "51654651f81a5e9bee47c3e8eb6bbc5a")
(setf (get jetbotmini_msgs::PatrolWarning :datatype-) "jetbotmini_msgs/PatrolWarning")
(setf (get jetbotmini_msgs::PatrolWarning :definition-)
      "int32 warning
bool  SetLoop
bool  close
")



(provide :jetbotmini_msgs/PatrolWarning "51654651f81a5e9bee47c3e8eb6bbc5a")


