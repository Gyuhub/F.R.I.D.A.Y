; Auto-generated. Do not edit!


(cl:in-package msg_pkg-srv)


;//! \htmlinclude srv_data-request.msg.html

(cl:defclass <srv_data-request> (roslisp-msg-protocol:ros-message)
  ((linear_x
    :reader linear_x
    :initarg :linear_x
    :type cl:float
    :initform 0.0)
   (linear_y
    :reader linear_y
    :initarg :linear_y
    :type cl:float
    :initform 0.0)
   (linear_z
    :reader linear_z
    :initarg :linear_z
    :type cl:float
    :initform 0.0)
   (angular_x
    :reader angular_x
    :initarg :angular_x
    :type cl:float
    :initform 0.0)
   (angular_y
    :reader angular_y
    :initarg :angular_y
    :type cl:float
    :initform 0.0)
   (angular_z
    :reader angular_z
    :initarg :angular_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass srv_data-request (<srv_data-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv_data-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv_data-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_pkg-srv:<srv_data-request> is deprecated: use msg_pkg-srv:srv_data-request instead.")))

(cl:ensure-generic-function 'linear_x-val :lambda-list '(m))
(cl:defmethod linear_x-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_x-val is deprecated.  Use msg_pkg-srv:linear_x instead.")
  (linear_x m))

(cl:ensure-generic-function 'linear_y-val :lambda-list '(m))
(cl:defmethod linear_y-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_y-val is deprecated.  Use msg_pkg-srv:linear_y instead.")
  (linear_y m))

(cl:ensure-generic-function 'linear_z-val :lambda-list '(m))
(cl:defmethod linear_z-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_z-val is deprecated.  Use msg_pkg-srv:linear_z instead.")
  (linear_z m))

(cl:ensure-generic-function 'angular_x-val :lambda-list '(m))
(cl:defmethod angular_x-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_x-val is deprecated.  Use msg_pkg-srv:angular_x instead.")
  (angular_x m))

(cl:ensure-generic-function 'angular_y-val :lambda-list '(m))
(cl:defmethod angular_y-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_y-val is deprecated.  Use msg_pkg-srv:angular_y instead.")
  (angular_y m))

(cl:ensure-generic-function 'angular_z-val :lambda-list '(m))
(cl:defmethod angular_z-val ((m <srv_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_z-val is deprecated.  Use msg_pkg-srv:angular_z instead.")
  (angular_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv_data-request>) ostream)
  "Serializes a message object of type '<srv_data-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv_data-request>) istream)
  "Deserializes a message object of type '<srv_data-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv_data-request>)))
  "Returns string type for a service object of type '<srv_data-request>"
  "msg_pkg/srv_dataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv_data-request)))
  "Returns string type for a service object of type 'srv_data-request"
  "msg_pkg/srv_dataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv_data-request>)))
  "Returns md5sum for a message object of type '<srv_data-request>"
  "cc658ab5d7c21e947d19ff1a924c551f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv_data-request)))
  "Returns md5sum for a message object of type 'srv_data-request"
  "cc658ab5d7c21e947d19ff1a924c551f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv_data-request>)))
  "Returns full string definition for message of type '<srv_data-request>"
  (cl:format cl:nil "float64 linear_x~%float64 linear_y~%float64 linear_z~%float64 angular_x~%float64 angular_y~%float64 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv_data-request)))
  "Returns full string definition for message of type 'srv_data-request"
  (cl:format cl:nil "float64 linear_x~%float64 linear_y~%float64 linear_z~%float64 angular_x~%float64 angular_y~%float64 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv_data-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv_data-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv_data-request
    (cl:cons ':linear_x (linear_x msg))
    (cl:cons ':linear_y (linear_y msg))
    (cl:cons ':linear_z (linear_z msg))
    (cl:cons ':angular_x (angular_x msg))
    (cl:cons ':angular_y (angular_y msg))
    (cl:cons ':angular_z (angular_z msg))
))
;//! \htmlinclude srv_data-response.msg.html

(cl:defclass <srv_data-response> (roslisp-msg-protocol:ros-message)
  ((linear_x_result
    :reader linear_x_result
    :initarg :linear_x_result
    :type cl:float
    :initform 0.0)
   (linear_y_result
    :reader linear_y_result
    :initarg :linear_y_result
    :type cl:float
    :initform 0.0)
   (linear_z_result
    :reader linear_z_result
    :initarg :linear_z_result
    :type cl:float
    :initform 0.0)
   (angular_x_result
    :reader angular_x_result
    :initarg :angular_x_result
    :type cl:float
    :initform 0.0)
   (angular_y_result
    :reader angular_y_result
    :initarg :angular_y_result
    :type cl:float
    :initform 0.0)
   (angular_z_result
    :reader angular_z_result
    :initarg :angular_z_result
    :type cl:float
    :initform 0.0))
)

(cl:defclass srv_data-response (<srv_data-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv_data-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv_data-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_pkg-srv:<srv_data-response> is deprecated: use msg_pkg-srv:srv_data-response instead.")))

(cl:ensure-generic-function 'linear_x_result-val :lambda-list '(m))
(cl:defmethod linear_x_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_x_result-val is deprecated.  Use msg_pkg-srv:linear_x_result instead.")
  (linear_x_result m))

(cl:ensure-generic-function 'linear_y_result-val :lambda-list '(m))
(cl:defmethod linear_y_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_y_result-val is deprecated.  Use msg_pkg-srv:linear_y_result instead.")
  (linear_y_result m))

(cl:ensure-generic-function 'linear_z_result-val :lambda-list '(m))
(cl:defmethod linear_z_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:linear_z_result-val is deprecated.  Use msg_pkg-srv:linear_z_result instead.")
  (linear_z_result m))

(cl:ensure-generic-function 'angular_x_result-val :lambda-list '(m))
(cl:defmethod angular_x_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_x_result-val is deprecated.  Use msg_pkg-srv:angular_x_result instead.")
  (angular_x_result m))

(cl:ensure-generic-function 'angular_y_result-val :lambda-list '(m))
(cl:defmethod angular_y_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_y_result-val is deprecated.  Use msg_pkg-srv:angular_y_result instead.")
  (angular_y_result m))

(cl:ensure-generic-function 'angular_z_result-val :lambda-list '(m))
(cl:defmethod angular_z_result-val ((m <srv_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_pkg-srv:angular_z_result-val is deprecated.  Use msg_pkg-srv:angular_z_result instead.")
  (angular_z_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv_data-response>) ostream)
  "Serializes a message object of type '<srv_data-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_x_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_y_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_z_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_x_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_y_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_z_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv_data-response>) istream)
  "Deserializes a message object of type '<srv_data-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x_result) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_y_result) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_z_result) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_x_result) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_y_result) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_z_result) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv_data-response>)))
  "Returns string type for a service object of type '<srv_data-response>"
  "msg_pkg/srv_dataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv_data-response)))
  "Returns string type for a service object of type 'srv_data-response"
  "msg_pkg/srv_dataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv_data-response>)))
  "Returns md5sum for a message object of type '<srv_data-response>"
  "cc658ab5d7c21e947d19ff1a924c551f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv_data-response)))
  "Returns md5sum for a message object of type 'srv_data-response"
  "cc658ab5d7c21e947d19ff1a924c551f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv_data-response>)))
  "Returns full string definition for message of type '<srv_data-response>"
  (cl:format cl:nil "float64 linear_x_result~%float64 linear_y_result~%float64 linear_z_result~%float64 angular_x_result~%float64 angular_y_result~%float64 angular_z_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv_data-response)))
  "Returns full string definition for message of type 'srv_data-response"
  (cl:format cl:nil "float64 linear_x_result~%float64 linear_y_result~%float64 linear_z_result~%float64 angular_x_result~%float64 angular_y_result~%float64 angular_z_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv_data-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv_data-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv_data-response
    (cl:cons ':linear_x_result (linear_x_result msg))
    (cl:cons ':linear_y_result (linear_y_result msg))
    (cl:cons ':linear_z_result (linear_z_result msg))
    (cl:cons ':angular_x_result (angular_x_result msg))
    (cl:cons ':angular_y_result (angular_y_result msg))
    (cl:cons ':angular_z_result (angular_z_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv_data)))
  'srv_data-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv_data)))
  'srv_data-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv_data)))
  "Returns string type for a service object of type '<srv_data>"
  "msg_pkg/srv_data")