; Auto-generated. Do not edit!


(cl:in-package assignment_srv-msg)


;//! \htmlinclude assign_srv_msg.msg.html

(cl:defclass <assign_srv_msg> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass assign_srv_msg (<assign_srv_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assign_srv_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assign_srv_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_srv-msg:<assign_srv_msg> is deprecated: use assignment_srv-msg:assign_srv_msg instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <assign_srv_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_srv-msg:num1-val is deprecated.  Use assignment_srv-msg:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <assign_srv_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_srv-msg:num2-val is deprecated.  Use assignment_srv-msg:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assign_srv_msg>) ostream)
  "Serializes a message object of type '<assign_srv_msg>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assign_srv_msg>) istream)
  "Deserializes a message object of type '<assign_srv_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assign_srv_msg>)))
  "Returns string type for a message object of type '<assign_srv_msg>"
  "assignment_srv/assign_srv_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_srv_msg)))
  "Returns string type for a message object of type 'assign_srv_msg"
  "assignment_srv/assign_srv_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assign_srv_msg>)))
  "Returns md5sum for a message object of type '<assign_srv_msg>"
  "c68f3979e1a90aac7d1c75a1096d1e60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assign_srv_msg)))
  "Returns md5sum for a message object of type 'assign_srv_msg"
  "c68f3979e1a90aac7d1c75a1096d1e60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assign_srv_msg>)))
  "Returns full string definition for message of type '<assign_srv_msg>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assign_srv_msg)))
  "Returns full string definition for message of type 'assign_srv_msg"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assign_srv_msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assign_srv_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'assign_srv_msg
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
