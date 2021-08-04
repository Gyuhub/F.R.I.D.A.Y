;; Auto-generated. Do not edit!


(when (boundp 'cmvision_3d::Blobs3d)
  (if (not (find-package "CMVISION_3D"))
    (make-package "CMVISION_3D"))
  (shadow 'Blobs3d (find-package "CMVISION_3D")))
(unless (find-package "CMVISION_3D::BLOBS3D")
  (make-package "CMVISION_3D::BLOBS3D"))

(in-package "ROS")
;;//! \htmlinclude Blobs3d.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cmvision_3d::Blobs3d
  :super ros::object
  :slots (_header _blob_count _blobs ))

(defmethod cmvision_3d::Blobs3d
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:blob_count __blob_count) 0)
    ((:blobs __blobs) (let (r) (dotimes (i 0) (push (instance cmvision_3d::Blob3d :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _blob_count (round __blob_count))
   (setq _blobs __blobs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:blob_count
   (&optional __blob_count)
   (if __blob_count (setq _blob_count __blob_count)) _blob_count)
  (:blobs
   (&rest __blobs)
   (if (keywordp (car __blobs))
       (send* _blobs __blobs)
     (progn
       (if __blobs (setq _blobs (car __blobs)))
       _blobs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _blob_count
    4
    ;; cmvision_3d/Blob3d[] _blobs
    (apply #'+ (send-all _blobs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _blob_count
       (write-long _blob_count s)
     ;; cmvision_3d/Blob3d[] _blobs
     (write-long (length _blobs) s)
     (dolist (elem _blobs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _blob_count
     (setq _blob_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; cmvision_3d/Blob3d[] _blobs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blobs (let (r) (dotimes (i n) (push (instance cmvision_3d::Blob3d :init) r)) r))
     (dolist (elem- _blobs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cmvision_3d::Blobs3d :md5sum-) "869bbddc0459864dc4de06329dfb061b")
(setf (get cmvision_3d::Blobs3d :datatype-) "cmvision_3d/Blobs3d")
(setf (get cmvision_3d::Blobs3d :definition-)
      "Header header
uint32 blob_count
Blob3d[] blobs

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: cmvision_3d/Blob3d
string name
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



(provide :cmvision_3d/Blobs3d "869bbddc0459864dc4de06329dfb061b")


