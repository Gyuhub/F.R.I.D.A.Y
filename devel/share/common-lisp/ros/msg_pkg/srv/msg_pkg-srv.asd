
(cl:in-package :asdf)

(defsystem "msg_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "srv_data" :depends-on ("_package_srv_data"))
    (:file "_package_srv_data" :depends-on ("_package"))
  ))