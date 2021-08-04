# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cmvision_3d: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icmvision_3d:/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cmvision_3d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_custom_target(_cmvision_3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cmvision_3d" "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" "cmvision_3d/Blob3d:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_custom_target(_cmvision_3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cmvision_3d" "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg"
  "${MSG_I_FLAGS}"
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision_3d
)
_generate_msg_cpp(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision_3d
)

### Generating Services

### Generating Module File
_generate_module_cpp(cmvision_3d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision_3d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cmvision_3d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cmvision_3d_generate_messages cmvision_3d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_cpp _cmvision_3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_cpp _cmvision_3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_3d_gencpp)
add_dependencies(cmvision_3d_gencpp cmvision_3d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_3d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg"
  "${MSG_I_FLAGS}"
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision_3d
)
_generate_msg_eus(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision_3d
)

### Generating Services

### Generating Module File
_generate_module_eus(cmvision_3d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision_3d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cmvision_3d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cmvision_3d_generate_messages cmvision_3d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_eus _cmvision_3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_eus _cmvision_3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_3d_geneus)
add_dependencies(cmvision_3d_geneus cmvision_3d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_3d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg"
  "${MSG_I_FLAGS}"
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision_3d
)
_generate_msg_lisp(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision_3d
)

### Generating Services

### Generating Module File
_generate_module_lisp(cmvision_3d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision_3d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cmvision_3d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cmvision_3d_generate_messages cmvision_3d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_lisp _cmvision_3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_lisp _cmvision_3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_3d_genlisp)
add_dependencies(cmvision_3d_genlisp cmvision_3d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_3d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg"
  "${MSG_I_FLAGS}"
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision_3d
)
_generate_msg_nodejs(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision_3d
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cmvision_3d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision_3d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cmvision_3d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cmvision_3d_generate_messages cmvision_3d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_nodejs _cmvision_3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_nodejs _cmvision_3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_3d_gennodejs)
add_dependencies(cmvision_3d_gennodejs cmvision_3d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_3d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg"
  "${MSG_I_FLAGS}"
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d
)
_generate_msg_py(cmvision_3d
  "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d
)

### Generating Services

### Generating Module File
_generate_module_py(cmvision_3d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cmvision_3d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cmvision_3d_generate_messages cmvision_3d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blobs3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_py _cmvision_3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pmgrb6484/F.R.I.D.A.Y/src/cmvision_3d/msg/Blob3d.msg" NAME_WE)
add_dependencies(cmvision_3d_generate_messages_py _cmvision_3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_3d_genpy)
add_dependencies(cmvision_3d_genpy cmvision_3d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_3d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision_3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision_3d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cmvision_3d_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cmvision_3d_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision_3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision_3d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cmvision_3d_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cmvision_3d_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision_3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision_3d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cmvision_3d_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cmvision_3d_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision_3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision_3d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cmvision_3d_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cmvision_3d_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision_3d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cmvision_3d_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cmvision_3d_generate_messages_py geometry_msgs_generate_messages_py)
endif()
