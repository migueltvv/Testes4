// Auto-generated. Do not edit!

// (in-package elevation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OccupancyElevation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.occupancy = null;
      this.height = null;
      this.costMap = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('occupancy')) {
        this.occupancy = initObj.occupancy
      }
      else {
        this.occupancy = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = [];
      }
      if (initObj.hasOwnProperty('costMap')) {
        this.costMap = initObj.costMap
      }
      else {
        this.costMap = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OccupancyElevation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [occupancy]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.occupancy, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _arraySerializer.float32(obj.height, buffer, bufferOffset, null);
    // Serialize message field [costMap]
    bufferOffset = _arraySerializer.float32(obj.costMap, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OccupancyElevation
    let len;
    let data = new OccupancyElevation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [occupancy]
    data.occupancy = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [costMap]
    data.costMap = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.occupancy);
    length += 4 * object.height.length;
    length += 4 * object.costMap.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'elevation_msgs/OccupancyElevation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3ebf7cb4dc4ae59b4871ecc06a3823f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ElevationMap
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OccupancyElevation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.occupancy !== undefined) {
      resolved.occupancy = nav_msgs.msg.OccupancyGrid.Resolve(msg.occupancy)
    }
    else {
      resolved.occupancy = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = []
    }

    if (msg.costMap !== undefined) {
      resolved.costMap = msg.costMap;
    }
    else {
      resolved.costMap = []
    }

    return resolved;
    }
};

module.exports = OccupancyElevation;
