find_package(Ceres CONFIG) 

if (TARGET Ceres::ceres)
  set(Ceres_FOUND TRUE)
  set(Ceres_VERSION ${Ceres_VERSION})
  set(Ceres_LIBRARIES Ceres::ceres)
  set(ceres_FOUND TRUE)
  set(ceres_VERSION ${Ceres_VERSION})
  set(ceres_LIBRARIES Ceres::ceres)
endif()
