;; Auto-generated. Do not edit!


(when (boundp 'msg_pkg::srv_data)
  (if (not (find-package "MSG_PKG"))
    (make-package "MSG_PKG"))
  (shadow 'srv_data (find-package "MSG_PKG")))
(unless (find-package "MSG_PKG::SRV_DATA")
  (make-package "MSG_PKG::SRV_DATA"))
(unless (find-package "MSG_PKG::SRV_DATAREQUEST")
  (make-package "MSG_PKG::SRV_DATAREQUEST"))
(unless (find-package "MSG_PKG::SRV_DATARESPONSE")
  (make-package "MSG_PKG::SRV_DATARESPONSE"))

(in-package "ROS")





(defclass msg_pkg::srv_dataRequest
  :super ros::object
  :slots (_linear_x _linear_y _linear_z _angular_x _angular_y _angular_z ))

(defmethod msg_pkg::srv_dataRequest
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:linear_y __linear_y) 0.0)
    ((:linear_z __linear_z) 0.0)
    ((:angular_x __angular_x) 0.0)
    ((:angular_y __angular_y) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _linear_y (float __linear_y))
   (setq _linear_z (float __linear_z))
   (setq _angular_x (float __angular_x))
   (setq _angular_y (float __angular_y))
   (setq _angular_z (float __angular_z))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:linear_y
   (&optional __linear_y)
   (if __linear_y (setq _linear_y __linear_y)) _linear_y)
  (:linear_z
   (&optional __linear_z)
   (if __linear_z (setq _linear_z __linear_z)) _linear_z)
  (:angular_x
   (&optional __angular_x)
   (if __angular_x (setq _angular_x __angular_x)) _angular_x)
  (:angular_y
   (&optional __angular_y)
   (if __angular_y (setq _angular_y __angular_y)) _angular_y)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_x
    8
    ;; float64 _linear_y
    8
    ;; float64 _linear_z
    8
    ;; float64 _angular_x
    8
    ;; float64 _angular_y
    8
    ;; float64 _angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_y
       (sys::poke _linear_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_z
       (sys::poke _linear_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_x
       (sys::poke _angular_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_y
       (sys::poke _angular_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_y
     (setq _linear_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_z
     (setq _linear_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_x
     (setq _angular_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_y
     (setq _angular_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass msg_pkg::srv_dataResponse
  :super ros::object
  :slots (_linear_x_result _linear_y_result _linear_z_result _angular_x_result _angular_y_result _angular_z_result ))

(defmethod msg_pkg::srv_dataResponse
  (:init
   (&key
    ((:linear_x_result __linear_x_result) 0.0)
    ((:linear_y_result __linear_y_result) 0.0)
    ((:linear_z_result __linear_z_result) 0.0)
    ((:angular_x_result __angular_x_result) 0.0)
    ((:angular_y_result __angular_y_result) 0.0)
    ((:angular_z_result __angular_z_result) 0.0)
    )
   (send-super :init)
   (setq _linear_x_result (float __linear_x_result))
   (setq _linear_y_result (float __linear_y_result))
   (setq _linear_z_result (float __linear_z_result))
   (setq _angular_x_result (float __angular_x_result))
   (setq _angular_y_result (float __angular_y_result))
   (setq _angular_z_result (float __angular_z_result))
   self)
  (:linear_x_result
   (&optional __linear_x_result)
   (if __linear_x_result (setq _linear_x_result __linear_x_result)) _linear_x_result)
  (:linear_y_result
   (&optional __linear_y_result)
   (if __linear_y_result (setq _linear_y_result __linear_y_result)) _linear_y_result)
  (:linear_z_result
   (&optional __linear_z_result)
   (if __linear_z_result (setq _linear_z_result __linear_z_result)) _linear_z_result)
  (:angular_x_result
   (&optional __angular_x_result)
   (if __angular_x_result (setq _angular_x_result __angular_x_result)) _angular_x_result)
  (:angular_y_result
   (&optional __angular_y_result)
   (if __angular_y_result (setq _angular_y_result __angular_y_result)) _angular_y_result)
  (:angular_z_result
   (&optional __angular_z_result)
   (if __angular_z_result (setq _angular_z_result __angular_z_result)) _angular_z_result)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_x_result
    8
    ;; float64 _linear_y_result
    8
    ;; float64 _linear_z_result
    8
    ;; float64 _angular_x_result
    8
    ;; float64 _angular_y_result
    8
    ;; float64 _angular_z_result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_x_result
       (sys::poke _linear_x_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_y_result
       (sys::poke _linear_y_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_z_result
       (sys::poke _linear_z_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_x_result
       (sys::poke _angular_x_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_y_result
       (sys::poke _angular_y_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z_result
       (sys::poke _angular_z_result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_x_result
     (setq _linear_x_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_y_result
     (setq _linear_y_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_z_result
     (setq _linear_z_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_x_result
     (setq _angular_x_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_y_result
     (setq _angular_y_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z_result
     (setq _angular_z_result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass msg_pkg::srv_data
  :super ros::object
  :slots ())

(setf (get msg_pkg::srv_data :md5sum-) "cc658ab5d7c21e947d19ff1a924c551f")
(setf (get msg_pkg::srv_data :datatype-) "msg_pkg/srv_data")
(setf (get msg_pkg::srv_data :request) msg_pkg::srv_dataRequest)
(setf (get msg_pkg::srv_data :response) msg_pkg::srv_dataResponse)

(defmethod msg_pkg::srv_dataRequest
  (:response () (instance msg_pkg::srv_dataResponse :init)))

(setf (get msg_pkg::srv_dataRequest :md5sum-) "cc658ab5d7c21e947d19ff1a924c551f")
(setf (get msg_pkg::srv_dataRequest :datatype-) "msg_pkg/srv_dataRequest")
(setf (get msg_pkg::srv_dataRequest :definition-)
      "float64 linear_x
float64 linear_y
float64 linear_z
float64 angular_x
float64 angular_y
float64 angular_z
---
float64 linear_x_result
float64 linear_y_result
float64 linear_z_result
float64 angular_x_result
float64 angular_y_result
float64 angular_z_result

")

(setf (get msg_pkg::srv_dataResponse :md5sum-) "cc658ab5d7c21e947d19ff1a924c551f")
(setf (get msg_pkg::srv_dataResponse :datatype-) "msg_pkg/srv_dataResponse")
(setf (get msg_pkg::srv_dataResponse :definition-)
      "float64 linear_x
float64 linear_y
float64 linear_z
float64 angular_x
float64 angular_y
float64 angular_z
---
float64 linear_x_result
float64 linear_y_result
float64 linear_z_result
float64 angular_x_result
float64 angular_y_result
float64 angular_z_result

")



(provide :msg_pkg/srv_data "cc658ab5d7c21e947d19ff1a924c551f")


