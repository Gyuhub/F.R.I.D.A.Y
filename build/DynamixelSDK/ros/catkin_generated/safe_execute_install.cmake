execute_process(COMMAND "/home/pmgrb6484/F.R.I.D.A.Y/build/DynamixelSDK/ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pmgrb6484/F.R.I.D.A.Y/build/DynamixelSDK/ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()