find_package(laszip CONFIG)

if (TARGET laszip::laszip)
  set(LASzip_FOUND TRUE)
  set(LASzip_VERSION ${laszip_VERSION})
  set(LASzip_LIBRARIES laszip::laszip)
endif()
