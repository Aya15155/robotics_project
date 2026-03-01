# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "security_msgs: 7 messages, 1 services")

set(MSG_I_FLAGS "-Isecurity_msgs:/home/ubuntu/robotics_project/devel/share/security_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(security_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" "security_msgs/ConfirmThreatGoal:security_msgs/ConfirmThreatResult:security_msgs/ConfirmThreatFeedback:actionlib_msgs/GoalID:security_msgs/ConfirmThreatActionFeedback:std_msgs/Header:security_msgs/ConfirmThreatActionResult:security_msgs/ConfirmThreatActionGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" "std_msgs/Header:security_msgs/ConfirmThreatGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" "std_msgs/Header:security_msgs/ConfirmThreatResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" "std_msgs/Header:security_msgs/ConfirmThreatFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" ""
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" ""
)

get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" ""
)

get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_custom_target(_security_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "security_msgs" "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)
_generate_msg_cpp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)

### Generating Services
_generate_srv_cpp(security_msgs
  "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
)

### Generating Module File
_generate_module_cpp(security_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(security_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(security_msgs_generate_messages security_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_dependencies(security_msgs_generate_messages_cpp _security_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(security_msgs_gencpp)
add_dependencies(security_msgs_gencpp security_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS security_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)
_generate_msg_eus(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)

### Generating Services
_generate_srv_eus(security_msgs
  "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
)

### Generating Module File
_generate_module_eus(security_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(security_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(security_msgs_generate_messages security_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_dependencies(security_msgs_generate_messages_eus _security_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(security_msgs_geneus)
add_dependencies(security_msgs_geneus security_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS security_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)
_generate_msg_lisp(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)

### Generating Services
_generate_srv_lisp(security_msgs
  "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
)

### Generating Module File
_generate_module_lisp(security_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(security_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(security_msgs_generate_messages security_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_dependencies(security_msgs_generate_messages_lisp _security_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(security_msgs_genlisp)
add_dependencies(security_msgs_genlisp security_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS security_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)
_generate_msg_nodejs(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)

### Generating Services
_generate_srv_nodejs(security_msgs
  "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
)

### Generating Module File
_generate_module_nodejs(security_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(security_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(security_msgs_generate_messages security_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_dependencies(security_msgs_generate_messages_nodejs _security_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(security_msgs_gennodejs)
add_dependencies(security_msgs_gennodejs security_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS security_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)
_generate_msg_py(security_msgs
  "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)

### Generating Services
_generate_srv_py(security_msgs
  "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
)

### Generating Module File
_generate_module_py(security_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(security_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(security_msgs_generate_messages security_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatAction.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatActionFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatGoal.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatResult.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/devel/share/security_msgs/msg/ConfirmThreatFeedback.msg" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/robotics_project/src/robot_security_system/security_msgs/srv/ConfirmScan.srv" NAME_WE)
add_dependencies(security_msgs_generate_messages_py _security_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(security_msgs_genpy)
add_dependencies(security_msgs_genpy security_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS security_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/security_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(security_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(security_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/security_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(security_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(security_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/security_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(security_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(security_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/security_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(security_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(security_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/security_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(security_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(security_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
