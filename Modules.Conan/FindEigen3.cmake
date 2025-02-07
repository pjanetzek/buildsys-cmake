find_package(Eigen3 CONFIG)

if (TARGET Eigen3::Eigen)
  set(EIGEN3_FOUND TRUE)
  set(Eigen3_FOUND TRUE)
  set(EIGEN3_VERSION ${Eigen3_VERSION})
  set(Eigen3_VERSION ${Eigen3_VERSION})
  set(EIGEN3_LIBRARIES Eigen3::Eigen)
  set(Eigen3_LIBRARIES Eigen3::Eigen)

  # Add additional include directory "include"
  get_target_property(Eigen3_INCLUDE_DIRS Eigen3::Eigen INTERFACE_INCLUDE_DIRECTORIES)
  string(REPLACE "include/eigen3" "include" Eigen3_ADDITIONAL_INCLUDE_DIRS ${Eigen3_INCLUDE_DIRS})
  set_target_properties(Eigen3::Eigen PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${Eigen3_INCLUDE_DIRS};${Eigen3_ADDITIONAL_INCLUDE_DIRS}")
endif()
