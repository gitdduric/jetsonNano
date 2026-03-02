# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jetbotmini_msgs: 8 messages, 6 services")

set(MSG_I_FLAGS "-Ijetbotmini_msgs:/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jetbotmini_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" ""
)

get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_custom_target(_jetbotmini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetbotmini_msgs" "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Services
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_cpp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Module File
_generate_module_cpp(jetbotmini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jetbotmini_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jetbotmini_msgs_generate_messages jetbotmini_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_cpp _jetbotmini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbotmini_msgs_gencpp)
add_dependencies(jetbotmini_msgs_gencpp jetbotmini_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbotmini_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Services
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_eus(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Module File
_generate_module_eus(jetbotmini_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jetbotmini_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jetbotmini_msgs_generate_messages jetbotmini_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_eus _jetbotmini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbotmini_msgs_geneus)
add_dependencies(jetbotmini_msgs_geneus jetbotmini_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbotmini_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Services
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_lisp(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Module File
_generate_module_lisp(jetbotmini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jetbotmini_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jetbotmini_msgs_generate_messages jetbotmini_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_lisp _jetbotmini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbotmini_msgs_genlisp)
add_dependencies(jetbotmini_msgs_genlisp jetbotmini_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbotmini_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Services
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_nodejs(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Module File
_generate_module_nodejs(jetbotmini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jetbotmini_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jetbotmini_msgs_generate_messages jetbotmini_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_nodejs _jetbotmini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbotmini_msgs_gennodejs)
add_dependencies(jetbotmini_msgs_gennodejs jetbotmini_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbotmini_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_msg_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Services
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)
_generate_srv_py(jetbotmini_msgs
  "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
)

### Generating Module File
_generate_module_py(jetbotmini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jetbotmini_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jetbotmini_msgs_generate_messages jetbotmini_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv" NAME_WE)
add_dependencies(jetbotmini_msgs_generate_messages_py _jetbotmini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetbotmini_msgs_genpy)
add_dependencies(jetbotmini_msgs_genpy jetbotmini_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetbotmini_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetbotmini_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jetbotmini_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(jetbotmini_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(jetbotmini_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetbotmini_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jetbotmini_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(jetbotmini_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(jetbotmini_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetbotmini_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jetbotmini_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(jetbotmini_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(jetbotmini_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetbotmini_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jetbotmini_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(jetbotmini_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(jetbotmini_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetbotmini_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jetbotmini_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(jetbotmini_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(jetbotmini_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
