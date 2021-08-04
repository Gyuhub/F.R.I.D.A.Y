;; Auto-generated. Do not edit!


(when (boundp 'cmvision_3d::Blob3d)
  (if (not (find-package "CMVISION_3D"))
    (make-package "CMVISION_3D"))
  (shadow 'Blob3d (find-package "CMVISION_3D")))
(unless (find-package "CMVISION_3D::BLOB3D")
  (make-package "CMVISION_3D::BLOB3D"))

(in-package "ROS")
;;//! \htmlinclude Blob3d.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cmvision_3d::Blob3d
  :super ros::object
  :slots (_name _red _green _blue _area _center _top_left _bottom_right ))

(defmethod cmvision_3d::Blob3d
  (:init
   (&key
    ((:name __name) "")
    ((:red __red) 0)
    ((:green __green) 0)
    ((:blue __blue) 0)
    ((:area __area) 0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:top_left __top_left) (instance geometry_msgs::Point :init))
    ((:bottom_right __bottom_right) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _red (round __red))
   (setq _green (round __green))
   (setq _blue (round __blue))
   (setq _area (round __area))
   (setq _center __center)
   (setq _top_left __top_left)
   (setq _bottom_right __bottom_right)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:top_left
   (&rest __top_left)
   (if (keywordp (car __top_left))
       (send* _top_left __top_left)
     (progn
       (if __top_left (setq _top_left (car __top_left)))
       _top_left)))
  (:bottom_right
   (&rest __bottom_right)
   (if (keywordp (car __bottom_right))
       (send* _bottom_right __bottom_right)
     (progn
       (if __bottom_right (setq _bottom_right (car __bottom_right)))
       _bottom_right)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _red
    4
    ;; uint32 _green
    4
    ;; uint32 _blue
    4
    ;; uint32 _area
    4
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point _top_left
    (send _top_left :serialization-length)
    ;; geometry_msgs/Point _bottom_right
    (send _bottom_right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _red
       (write-long _red s)
     ;; uint32 _green
       (write-long _green s)
     ;; uint32 _blue
       (write-long _blue s)
     ;; uint32 _area
       (write-long _area s)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point _top_left
       (send _top_left :serialize s)
     ;; geometry_msgs/Point _bottom_right
       (send _bottom_right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _red
     (setq _red (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _green
     (setq _green (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _blue
     (setq _blue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _area
     (setq _area (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point _top_left
     (send _top_left :deserialize buf ptr-) (incf ptr- (send _top_left :serialization-length))
   ;; geometry_msgs/Point _bottom_right
     (send _bottom_right :deserialize buf ptr-) (incf ptr- (send _bottom_right :serialization-length))
   ;;
   self)
  )

(setf (get cmvision_3d::Blob3d :md5sum-) "b7ac1acee51124a3194784be5dd98a9c")
(setf (get cmvision_3d::Blob3d :datatype-) "cmvision_3d/Blob3d")
(setf (get cmvision_3d::Blob3d :definition-)
      "string name
uint32 red
uint32 green
uint32 blue
uint32 area
geometry_msgs/Point center
geometry_msgs/Point top_left
geometry_msgs/Point bottom_right
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :cmvision_3d/Blob3d "b7ac1acee51124a3194784be5dd98a9c")


