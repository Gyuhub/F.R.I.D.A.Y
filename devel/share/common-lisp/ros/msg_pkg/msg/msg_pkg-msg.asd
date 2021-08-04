
(cl:in-package :asdf)

(defsystem "msg_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msg_data" :depends-on ("_package_msg_data"))
    (:file "_package_msg_data" :depends-on ("_package"))
  ))