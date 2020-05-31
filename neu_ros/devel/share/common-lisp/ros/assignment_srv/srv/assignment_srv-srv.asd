
(cl:in-package :asdf)

(defsystem "assignment_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "assign_srv" :depends-on ("_package_assign_srv"))
    (:file "_package_assign_srv" :depends-on ("_package"))
  ))