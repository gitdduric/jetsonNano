;; Auto-generated. Do not edit!


(when (boundp 'jetbotmini_msgs::General)
  (if (not (find-package "JETBOTMINI_MSGS"))
    (make-package "JETBOTMINI_MSGS"))
  (shadow 'General (find-package "JETBOTMINI_MSGS")))
(unless (find-package "JETBOTMINI_MSGS::GENERAL")
  (make-package "JETBOTMINI_MSGS::GENERAL"))

(in-package "ROS")
;;//! \htmlinclude General.msg.html


(defclass jetbotmini_msgs::General
  :super ros::object
  :slots (_Graphics _TrackState ))

(defmethod jetbotmini_msgs::General
  (:init
   (&key
    ((:Graphics __Graphics) "")
    ((:TrackState __TrackState) "")
    )
   (send-super :init)
   (setq _Graphics (string __Graphics))
   (setq _TrackState (string __TrackState))
   self)
  (:Graphics
   (&optional __Graphics)
   (if __Graphics (setq _Graphics __Graphics)) _Graphics)
  (:TrackState
   (&optional __TrackState)
   (if __TrackState (setq _TrackState __TrackState)) _TrackState)
  (:serialization-length
   ()
   (+
    ;; string _Graphics
    4 (length _Graphics)
    ;; string _TrackState
    4 (length _TrackState)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Graphics
       (write-long (length _Graphics) s) (princ _Graphics s)
     ;; string _TrackState
       (write-long (length _TrackState) s) (princ _TrackState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Graphics
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Graphics (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _TrackState
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _TrackState (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jetbotmini_msgs::General :md5sum-) "17ceb36a2d5cf93a882109ffc0506c61")
(setf (get jetbotmini_msgs::General :datatype-) "jetbotmini_msgs/General")
(setf (get jetbotmini_msgs::General :definition-)
      "string Graphics
string TrackState
")



(provide :jetbotmini_msgs/General "17ceb36a2d5cf93a882109ffc0506c61")


