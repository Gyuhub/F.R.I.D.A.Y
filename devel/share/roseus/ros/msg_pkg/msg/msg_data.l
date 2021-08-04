;; Auto-generated. Do not edit!


(when (boundp 'msg_pkg::msg_data)
  (if (not (find-package "MSG_PKG"))
    (make-package "MSG_PKG"))
  (shadow 'msg_data (find-package "MSG_PKG")))
(unless (find-package "MSG_PKG::MSG_DATA")
  (make-package "MSG_PKG::MSG_DATA"))

(in-package "ROS")
;;//! \htmlinclude msg_data.msg.html


(defclass msg_pkg::msg_data
  :super ros::object
  :slots (_data _x _y _z _x_pos _y_pos _z_pos _x_ik_pos _y_ik_pos _z_ik_pos _z_depth _pos_flag _depth_flag _f64_linear_x _f64_linear_y _f64_linear_z _f64_angular_x _f64_angular_y _f64_angular_z ))

(defmethod msg_pkg::msg_data
  (:init
   (&key
    ((:data __data) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    ((:x_pos __x_pos) 0)
    ((:y_pos __y_pos) 0)
    ((:z_pos __z_pos) 0)
    ((:x_ik_pos __x_ik_pos) 0)
    ((:y_ik_pos __y_ik_pos) 0)
    ((:z_ik_pos __z_ik_pos) 0)
    ((:z_depth __z_depth) 0)
    ((:pos_flag __pos_flag) nil)
    ((:depth_flag __depth_flag) nil)
    ((:f64_linear_x __f64_linear_x) 0.0)
    ((:f64_linear_y __f64_linear_y) 0.0)
    ((:f64_linear_z __f64_linear_z) 0.0)
    ((:f64_angular_x __f64_angular_x) 0.0)
    ((:f64_angular_y __f64_angular_y) 0.0)
    ((:f64_angular_z __f64_angular_z) 0.0)
    )
   (send-super :init)
   (setq _data (round __data))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   (setq _x_pos (round __x_pos))
   (setq _y_pos (round __y_pos))
   (setq _z_pos (round __z_pos))
   (setq _x_ik_pos (round __x_ik_pos))
   (setq _y_ik_pos (round __y_ik_pos))
   (setq _z_ik_pos (round __z_ik_pos))
   (setq _z_depth (round __z_depth))
   (setq _pos_flag __pos_flag)
   (setq _depth_flag __depth_flag)
   (setq _f64_linear_x (float __f64_linear_x))
   (setq _f64_linear_y (float __f64_linear_y))
   (setq _f64_linear_z (float __f64_linear_z))
   (setq _f64_angular_x (float __f64_angular_x))
   (setq _f64_angular_y (float __f64_angular_y))
   (setq _f64_angular_z (float __f64_angular_z))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:z_pos
   (&optional __z_pos)
   (if __z_pos (setq _z_pos __z_pos)) _z_pos)
  (:x_ik_pos
   (&optional __x_ik_pos)
   (if __x_ik_pos (setq _x_ik_pos __x_ik_pos)) _x_ik_pos)
  (:y_ik_pos
   (&optional __y_ik_pos)
   (if __y_ik_pos (setq _y_ik_pos __y_ik_pos)) _y_ik_pos)
  (:z_ik_pos
   (&optional __z_ik_pos)
   (if __z_ik_pos (setq _z_ik_pos __z_ik_pos)) _z_ik_pos)
  (:z_depth
   (&optional __z_depth)
   (if __z_depth (setq _z_depth __z_depth)) _z_depth)
  (:pos_flag
   (&optional __pos_flag)
   (if __pos_flag (setq _pos_flag __pos_flag)) _pos_flag)
  (:depth_flag
   (&optional __depth_flag)
   (if __depth_flag (setq _depth_flag __depth_flag)) _depth_flag)
  (:f64_linear_x
   (&optional __f64_linear_x)
   (if __f64_linear_x (setq _f64_linear_x __f64_linear_x)) _f64_linear_x)
  (:f64_linear_y
   (&optional __f64_linear_y)
   (if __f64_linear_y (setq _f64_linear_y __f64_linear_y)) _f64_linear_y)
  (:f64_linear_z
   (&optional __f64_linear_z)
   (if __f64_linear_z (setq _f64_linear_z __f64_linear_z)) _f64_linear_z)
  (:f64_angular_x
   (&optional __f64_angular_x)
   (if __f64_angular_x (setq _f64_angular_x __f64_angular_x)) _f64_angular_x)
  (:f64_angular_y
   (&optional __f64_angular_y)
   (if __f64_angular_y (setq _f64_angular_y __f64_angular_y)) _f64_angular_y)
  (:f64_angular_z
   (&optional __f64_angular_z)
   (if __f64_angular_z (setq _f64_angular_z __f64_angular_z)) _f64_angular_z)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; float32 _z
    4
    ;; uint32 _x_pos
    4
    ;; uint32 _y_pos
    4
    ;; uint32 _z_pos
    4
    ;; uint32 _x_ik_pos
    4
    ;; uint32 _y_ik_pos
    4
    ;; uint32 _z_ik_pos
    4
    ;; int32 _z_depth
    4
    ;; bool _pos_flag
    1
    ;; bool _depth_flag
    1
    ;; float64 _f64_linear_x
    8
    ;; float64 _f64_linear_y
    8
    ;; float64 _f64_linear_z
    8
    ;; float64 _f64_angular_x
    8
    ;; float64 _f64_angular_y
    8
    ;; float64 _f64_angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _x_pos
       (write-long _x_pos s)
     ;; uint32 _y_pos
       (write-long _y_pos s)
     ;; uint32 _z_pos
       (write-long _z_pos s)
     ;; uint32 _x_ik_pos
       (write-long _x_ik_pos s)
     ;; uint32 _y_ik_pos
       (write-long _y_ik_pos s)
     ;; uint32 _z_ik_pos
       (write-long _z_ik_pos s)
     ;; int32 _z_depth
       (write-long _z_depth s)
     ;; bool _pos_flag
       (if _pos_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _depth_flag
       (if _depth_flag (write-byte -1 s) (write-byte 0 s))
     ;; float64 _f64_linear_x
       (sys::poke _f64_linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f64_linear_y
       (sys::poke _f64_linear_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f64_linear_z
       (sys::poke _f64_linear_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f64_angular_x
       (sys::poke _f64_angular_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f64_angular_y
       (sys::poke _f64_angular_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f64_angular_z
       (sys::poke _f64_angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _z_pos
     (setq _z_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _x_ik_pos
     (setq _x_ik_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y_ik_pos
     (setq _y_ik_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _z_ik_pos
     (setq _z_ik_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z_depth
     (setq _z_depth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _pos_flag
     (setq _pos_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _depth_flag
     (setq _depth_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _f64_linear_x
     (setq _f64_linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f64_linear_y
     (setq _f64_linear_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f64_linear_z
     (setq _f64_linear_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f64_angular_x
     (setq _f64_angular_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f64_angular_y
     (setq _f64_angular_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f64_angular_z
     (setq _f64_angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msg_pkg::msg_data :md5sum-) "502f6070fe0715f8193e5e6e22265227")
(setf (get msg_pkg::msg_data :datatype-) "msg_pkg/msg_data")
(setf (get msg_pkg::msg_data :definition-)
      "int32 data
int32 x
int32 y
float32 z

uint32 x_pos
uint32 y_pos
uint32 z_pos

uint32 x_ik_pos
uint32 y_ik_pos
uint32 z_ik_pos

int32 z_depth

bool pos_flag
bool depth_flag

float64 f64_linear_x
float64 f64_linear_y
float64 f64_linear_z

float64 f64_angular_x
float64 f64_angular_y
float64 f64_angular_z

")



(provide :msg_pkg/msg_data "502f6070fe0715f8193e5e6e22265227")


