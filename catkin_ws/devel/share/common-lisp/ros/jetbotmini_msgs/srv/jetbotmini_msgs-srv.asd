
(cl:in-package :asdf)

(defsystem "jetbotmini_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Buzzer" :depends-on ("_package_Buzzer"))
    (:file "_package_Buzzer" :depends-on ("_package"))
    (:file "CamDevice" :depends-on ("_package_CamDevice"))
    (:file "_package_CamDevice" :depends-on ("_package"))
    (:file "LEDBLUE" :depends-on ("_package_LEDBLUE"))
    (:file "_package_LEDBLUE" :depends-on ("_package"))
    (:file "LEDGREE" :depends-on ("_package_LEDGREE"))
    (:file "_package_LEDGREE" :depends-on ("_package"))
    (:file "Motor" :depends-on ("_package_Motor"))
    (:file "_package_Motor" :depends-on ("_package"))
    (:file "Servo" :depends-on ("_package_Servo"))
    (:file "_package_Servo" :depends-on ("_package"))
  ))