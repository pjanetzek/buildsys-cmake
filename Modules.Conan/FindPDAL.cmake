find_package(PDAL 2.3 REQUIRED CONFIG)
# TODO: Find other solution
message(WARNING "Force-using PDAL 2.3")

if (TARGET PDAL::PDAL)
  set(PDAL_FOUND TRUE)
  set(PDAL_LIBRARIES PDAL::PDAL)
endif()

# get_target_property(PDAL_LIBRARIES PDAL::PDAL INTERFACE_LINK_LIBRARIES)
# get_target_property(PDAL_INCLUDE_DIRS PDAL::PDAL INTERFACE_INCLUDE_DIRECTORIES)