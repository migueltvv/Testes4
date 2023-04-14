# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "elevation_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ielevation_msgs:/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(elevation_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_custom_target(_elevation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elevation_msgs" "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" "nav_msgs/MapMetaData:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(elevation_msgs
  "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elevation_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(elevation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elevation_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(elevation_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(elevation_msgs_generate_messages elevation_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_dependencies(elevation_msgs_generate_messages_cpp _elevation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elevation_msgs_gencpp)
add_dependencies(elevation_msgs_gencpp elevation_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elevation_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(elevation_msgs
  "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elevation_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(elevation_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elevation_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(elevation_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(elevation_msgs_generate_messages elevation_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_dependencies(elevation_msgs_generate_messages_eus _elevation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elevation_msgs_geneus)
add_dependencies(elevation_msgs_geneus elevation_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elevation_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(elevation_msgs
  "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elevation_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(elevation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elevation_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(elevation_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(elevation_msgs_generate_messages elevation_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_dependencies(elevation_msgs_generate_messages_lisp _elevation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elevation_msgs_genlisp)
add_dependencies(elevation_msgs_genlisp elevation_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elevation_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(elevation_msgs
  "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elevation_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(elevation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elevation_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(elevation_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(elevation_msgs_generate_messages elevation_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_dependencies(elevation_msgs_generate_messages_nodejs _elevation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elevation_msgs_gennodejs)
add_dependencies(elevation_msgs_gennodejs elevation_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elevation_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(elevation_msgs
  "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elevation_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(elevation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elevation_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(elevation_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(elevation_msgs_generate_messages elevation_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/safe/gitsinced/src/traversability_mapping/elevation_msgs/msg/OccupancyElevation.msg" NAME_WE)
add_dependencies(elevation_msgs_generate_messages_py _elevation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elevation_msgs_genpy)
add_dependencies(elevation_msgs_genpy elevation_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elevation_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elevation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elevation_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(elevation_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(elevation_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(elevation_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elevation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elevation_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(elevation_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(elevation_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(elevation_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elevation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elevation_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(elevation_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(elevation_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(elevation_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elevation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elevation_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(elevation_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(elevation_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(elevation_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elevation_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elevation_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elevation_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(elevation_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(elevation_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(elevation_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
