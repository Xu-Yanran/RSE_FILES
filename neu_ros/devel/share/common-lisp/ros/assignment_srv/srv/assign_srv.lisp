; Auto-generated. Do not edit!


(cl:in-package assignment_srv-srv)


;//! \htmlinclude assign_srv-request.msg.html

(cl:defclass <assign_srv-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass assign_srv-request (<assign_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assign_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assign_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_srv-srv:<assign_srv-request> is deprecated: use assignment_srv-srv:assign_srv-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <assign_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_srv-srv:num1-val is deprecated.  Use assignment_srv-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <assign_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_srv-srv:num2-val is deprecated.  Use assignment_srv-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assign_srv-request>) ostream)
  "Serializes a message object of type '<assign_srv-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assign_srv-request>) istream)
  "Deserializes a message object of type '<assign_srv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assign_srv-request>)))
  "Returns string type for a service object of type '<assign_srv-request>"
  "assignment_srv/assign_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_srv-request)))
  "Returns string type for a service object of type 'assign_srv-request"
  "assignment_srv/assign_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assign_srv-request>)))
  "Returns md5sum for a message object of type '<assign_srv-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assign_srv-request)))
  "Returns md5sum for a message object of type 'assign_srv-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assign_srv-request>)))
  "Returns full string definition for message of type '<assign_srv-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assign_srv-request)))
  "Returns full string definition for message of type 'assign_srv-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assign_srv-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assign_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'assign_srv-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude assign_srv-response.msg.html

(cl:defclass <assign_srv-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass assign_srv-response (<assign_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assign_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assign_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_srv-srv:<assign_srv-response> is deprecated: use assignment_srv-srv:assign_srv-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <assign_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_srv-srv:sum-val is deprecated.  Use assignment_srv-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assign_srv-response>) ostream)
  "Serializes a message object of type '<assign_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assign_srv-response>) istream)
  "Deserializes a message object of type '<assign_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assign_srv-response>)))
  "Returns string type for a service object of type '<assign_srv-response>"
  "assignment_srv/assign_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_srv-response)))
  "Returns string type for a service object of type 'assign_srv-response"
  "assignment_srv/assign_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assign_srv-response>)))
  "Returns md5sum for a message object of type '<assign_srv-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assign_srv-response)))
  "Returns md5sum for a message object of type 'assign_srv-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assign_srv-response>)))
  "Returns full string definition for message of type '<assign_srv-response>"
  (cl:format cl:nil "int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assign_srv-response)))
  "Returns full string definition for message of type 'assign_srv-response"
  (cl:format cl:nil "int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assign_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assign_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'assign_srv-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'assign_srv)))
  'assign_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'assign_srv)))
  'assign_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_srv)))
  "Returns string type for a service object of type '<assign_srv>"
  "assignment_srv/assign_srv")