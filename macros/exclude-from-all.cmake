set(_BUILDSYS_EXCLUDE_FROM_ALL TRUE)

macro(setup_exclude_from_all)
  if(NOT DEFINED BUILDSYS_EXCLUDE_FROM_ALL OR BUILDSYS_EXCLUDE_FROM_ALL)
    set(_BUILDSYS_EXCLUDE_FROM_ALL TRUE)
    message(STATUS "Targets marked by exclude_from_all(TARGET) will be excluded from target 'all'")
  else()
    set(_BUILDSYS_EXCLUDE_FROM_ALL FALSE)
    message(STATUS "Targets marked by exclude_from_all(TARGET) will be included from target 'all'")
  endif()
endmacro()

macro(exclude_from_all TARGET)
  if(_BUILDSYS_EXCLUDE_FROM_ALL)
    message(STATUS "Excluding ${TARGET} from target 'all'.")
    set_target_properties(${TARGET} PROPERTIES EXCLUDE_FROM_ALL TRUE)
  else()
    message(STATUS "Including ${TARGET} in target 'all'.")
    set_target_properties(${TARGET} PROPERTIES EXCLUDE_FROM_ALL FALSE) 
  endif()
endmacro()

setup_exclude_from_all()

