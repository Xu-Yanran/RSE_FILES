
(cl:in-package :asdf)

(defsystem "assignment_srv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "assign_srv_msg" :depends-on ("_package_assign_srv_msg"))
    (:file "_package_assign_srv_msg" :depends-on ("_package"))
  ))