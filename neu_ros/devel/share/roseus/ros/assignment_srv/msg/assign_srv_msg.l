;; Auto-generated. Do not edit!


(when (boundp 'assignment_srv::assign_srv_msg)
  (if (not (find-package "ASSIGNMENT_SRV"))
    (make-package "ASSIGNMENT_SRV"))
  (shadow 'assign_srv_msg (find-package "ASSIGNMENT_SRV")))
(unless (find-package "ASSIGNMENT_SRV::ASSIGN_SRV_MSG")
  (make-package "ASSIGNMENT_SRV::ASSIGN_SRV_MSG"))

(in-package "ROS")
;;//! \htmlinclude assign_srv_msg.msg.html


(defclass assignment_srv::assign_srv_msg
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod assignment_srv::assign_srv_msg
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_srv::assign_srv_msg :md5sum-) "c68f3979e1a90aac7d1c75a1096d1e60")
(setf (get assignment_srv::assign_srv_msg :datatype-) "assignment_srv/assign_srv_msg")
(setf (get assignment_srv::assign_srv_msg :definition-)
      "int32 num1
int32 num2

")



(provide :assignment_srv/assign_srv_msg "c68f3979e1a90aac7d1c75a1096d1e60")


