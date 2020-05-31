;; Auto-generated. Do not edit!


(when (boundp 'assignment_srv::assign_srv)
  (if (not (find-package "ASSIGNMENT_SRV"))
    (make-package "ASSIGNMENT_SRV"))
  (shadow 'assign_srv (find-package "ASSIGNMENT_SRV")))
(unless (find-package "ASSIGNMENT_SRV::ASSIGN_SRV")
  (make-package "ASSIGNMENT_SRV::ASSIGN_SRV"))
(unless (find-package "ASSIGNMENT_SRV::ASSIGN_SRVREQUEST")
  (make-package "ASSIGNMENT_SRV::ASSIGN_SRVREQUEST"))
(unless (find-package "ASSIGNMENT_SRV::ASSIGN_SRVRESPONSE")
  (make-package "ASSIGNMENT_SRV::ASSIGN_SRVRESPONSE"))

(in-package "ROS")





(defclass assignment_srv::assign_srvRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod assignment_srv::assign_srvRequest
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

(defclass assignment_srv::assign_srvResponse
  :super ros::object
  :slots (_sum ))

(defmethod assignment_srv::assign_srvResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_srv::assign_srv
  :super ros::object
  :slots ())

(setf (get assignment_srv::assign_srv :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get assignment_srv::assign_srv :datatype-) "assignment_srv/assign_srv")
(setf (get assignment_srv::assign_srv :request) assignment_srv::assign_srvRequest)
(setf (get assignment_srv::assign_srv :response) assignment_srv::assign_srvResponse)

(defmethod assignment_srv::assign_srvRequest
  (:response () (instance assignment_srv::assign_srvResponse :init)))

(setf (get assignment_srv::assign_srvRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get assignment_srv::assign_srvRequest :datatype-) "assignment_srv/assign_srvRequest")
(setf (get assignment_srv::assign_srvRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum

")

(setf (get assignment_srv::assign_srvResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get assignment_srv::assign_srvResponse :datatype-) "assignment_srv/assign_srvResponse")
(setf (get assignment_srv::assign_srvResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum

")



(provide :assignment_srv/assign_srv "4781436a0c2affec8025955a6041e481")


