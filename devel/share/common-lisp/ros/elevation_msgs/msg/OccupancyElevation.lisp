; Auto-generated. Do not edit!


(cl:in-package elevation_msgs-msg)


;//! \htmlinclude OccupancyElevation.msg.html

(cl:defclass <OccupancyElevation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (occupancy
    :reader occupancy
    :initarg :occupancy
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (height
    :reader height
    :initarg :height
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (costMap
    :reader costMap
    :initarg :costMap
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OccupancyElevation (<OccupancyElevation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OccupancyElevation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OccupancyElevation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elevation_msgs-msg:<OccupancyElevation> is deprecated: use elevation_msgs-msg:OccupancyElevation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OccupancyElevation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elevation_msgs-msg:header-val is deprecated.  Use elevation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'occupancy-val :lambda-list '(m))
(cl:defmethod occupancy-val ((m <OccupancyElevation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elevation_msgs-msg:occupancy-val is deprecated.  Use elevation_msgs-msg:occupancy instead.")
  (occupancy m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <OccupancyElevation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elevation_msgs-msg:height-val is deprecated.  Use elevation_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'costMap-val :lambda-list '(m))
(cl:defmethod costMap-val ((m <OccupancyElevation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elevation_msgs-msg:costMap-val is deprecated.  Use elevation_msgs-msg:costMap instead.")
  (costMap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OccupancyElevation>) ostream)
  "Serializes a message object of type '<OccupancyElevation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occupancy) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'height))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'costMap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'costMap))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OccupancyElevation>) istream)
  "Deserializes a message object of type '<OccupancyElevation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occupancy) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'height) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'height)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'costMap) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'costMap)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OccupancyElevation>)))
  "Returns string type for a message object of type '<OccupancyElevation>"
  "elevation_msgs/OccupancyElevation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OccupancyElevation)))
  "Returns string type for a message object of type 'OccupancyElevation"
  "elevation_msgs/OccupancyElevation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OccupancyElevation>)))
  "Returns md5sum for a message object of type '<OccupancyElevation>"
  "b3ebf7cb4dc4ae59b4871ecc06a3823f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OccupancyElevation)))
  "Returns md5sum for a message object of type 'OccupancyElevation"
  "b3ebf7cb4dc4ae59b4871ecc06a3823f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OccupancyElevation>)))
  "Returns full string definition for message of type '<OccupancyElevation>"
  (cl:format cl:nil "# ElevationMap~%Header header ~%~%# original occupancy map data for the local map (access using: i.e. occupancy.data occupancy.info)~%nav_msgs/OccupancyGrid occupancy~%~%# height info for each grid~%float32[] height~%~%# cost map~%float32[] costMap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OccupancyElevation)))
  "Returns full string definition for message of type 'OccupancyElevation"
  (cl:format cl:nil "# ElevationMap~%Header header ~%~%# original occupancy map data for the local map (access using: i.e. occupancy.data occupancy.info)~%nav_msgs/OccupancyGrid occupancy~%~%# height info for each grid~%float32[] height~%~%# cost map~%float32[] costMap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OccupancyElevation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occupancy))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'height) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'costMap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OccupancyElevation>))
  "Converts a ROS message object to a list"
  (cl:list 'OccupancyElevation
    (cl:cons ':header (header msg))
    (cl:cons ':occupancy (occupancy msg))
    (cl:cons ':height (height msg))
    (cl:cons ':costMap (costMap msg))
))
