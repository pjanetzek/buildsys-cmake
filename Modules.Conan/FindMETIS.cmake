find_package(Metis REQUIRED CONFIG)

if (TARGET metis::metis)
  set(metis_FOUND TRUE)
  set(METIS_FOUND TRUE)
  set(metis_LIBRARIES metis::metis)
  set(METIS_LIBRARIES metis::metis)
endif()

# get_target_property(METIS_LIBRARY metis::metis INTERFACE_LINK_LIBRARIES)
# get_target_property(METIS_INCLUDE_DIR metis::metis INTERFACE_INCLUDE_DIRECTORIES)

# include(FindPackageHandleStandardArgs)

# find_package_handle_standard_args(METIS  DEFAULT_MSG
#                                   METIS_LIBRARY METIS_INCLUDE_DIR)

# mark_as_advanced(METIS_INCLUDE_DIR METIS_LIBRARY )
