# Install script for directory: /home/jetson/workspace/catkin_ws/src/jetbotmini_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jetson/workspace/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs/msg" TYPE FILE FILES
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/SensorState.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/General.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/PWMServo.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Joint.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Image_Msg.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/JoyState.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Battery.msg"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/msg/Edition.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs/srv" TYPE FILE FILES
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Buzzer.srv"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Servo.srv"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDBLUE.srv"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/LEDGREE.srv"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/CamDevice.srv"
    "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/srv/Motor.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs/cmake" TYPE FILE FILES "/home/jetson/workspace/catkin_ws/build/jetbotmini_msgs/catkin_generated/installspace/jetbotmini_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jetson/workspace/catkin_ws/devel/include/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jetson/workspace/catkin_ws/devel/share/roseus/ros/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jetson/workspace/catkin_ws/devel/share/common-lisp/ros/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jetson/workspace/catkin_ws/devel/share/gennodejs/ros/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/jetson/workspace/catkin_ws/devel/lib/python2.7/dist-packages/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/jetson/workspace/catkin_ws/devel/lib/python2.7/dist-packages/jetbotmini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jetson/workspace/catkin_ws/build/jetbotmini_msgs/catkin_generated/installspace/jetbotmini_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs/cmake" TYPE FILE FILES "/home/jetson/workspace/catkin_ws/build/jetbotmini_msgs/catkin_generated/installspace/jetbotmini_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs/cmake" TYPE FILE FILES
    "/home/jetson/workspace/catkin_ws/build/jetbotmini_msgs/catkin_generated/installspace/jetbotmini_msgsConfig.cmake"
    "/home/jetson/workspace/catkin_ws/build/jetbotmini_msgs/catkin_generated/installspace/jetbotmini_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jetbotmini_msgs" TYPE FILE FILES "/home/jetson/workspace/catkin_ws/src/jetbotmini_msgs/package.xml")
endif()

