;; Auto-generated. Do not edit!


(when (boundp 'elevation_msgs::OccupancyElevation)
  (if (not (find-package "ELEVATION_MSGS"))
    (make-package "ELEVATION_MSGS"))
  (shadow 'OccupancyElevation (find-package "ELEVATION_MSGS")))
(unless (find-package "ELEVATION_MSGS::OCCUPANCYELEVATION")
  (make-package "ELEVATION_MSGS::OCCUPANCYELEVATION"))

(in-package "ROS")
;;//! \htmlinclude OccupancyElevation.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass elevation_msgs::OccupancyElevation
  :super ros::object
  :slots (_header _occupancy _height _costMap ))

(defmethod elevation_msgs::OccupancyElevation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:occupancy __occupancy) (instance nav_msgs::OccupancyGrid :init))
    ((:height __height) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:costMap __costMap) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _occupancy __occupancy)
   (setq _height __height)
   (setq _costMap __costMap)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:occupancy
   (&rest __occupancy)
   (if (keywordp (car __occupancy))
       (send* _occupancy __occupancy)
     (progn
       (if __occupancy (setq _occupancy (car __occupancy)))
       _occupancy)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:costMap
   (&optional __costMap)
   (if __costMap (setq _costMap __costMap)) _costMap)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/OccupancyGrid _occupancy
    (send _occupancy :serialization-length)
    ;; float32[] _height
    (* 4    (length _height)) 4
    ;; float32[] _costMap
    (* 4    (length _costMap)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/OccupancyGrid _occupancy
       (send _occupancy :serialize s)
     ;; float32[] _height
     (write-long (length _height) s)
     (dotimes (i (length _height))
       (sys::poke (elt _height i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _costMap
     (write-long (length _costMap) s)
     (dotimes (i (length _costMap))
       (sys::poke (elt _costMap i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/OccupancyGrid _occupancy
     (send _occupancy :deserialize buf ptr-) (incf ptr- (send _occupancy :serialization-length))
   ;; float32[] _height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _height (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _height i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _costMap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _costMap (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _costMap i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get elevation_msgs::OccupancyElevation :md5sum-) "b3ebf7cb4dc4ae59b4871ecc06a3823f")
(setf (get elevation_msgs::OccupancyElevation :datatype-) "elevation_msgs/OccupancyElevation")
(setf (get elevation_msgs::OccupancyElevation :definition-)
      "# ElevationMap
Header header 

# original occupancy map data for the local map (access using: i.e. occupancy.data occupancy.info)
nav_msgs/OccupancyGrid occupancy

# height info for each grid
float32[] height

# cost map
float32[] costMap
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
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :elevation_msgs/OccupancyElevation "b3ebf7cb4dc4ae59b4871ecc06a3823f")


