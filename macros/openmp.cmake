macro(enable_OpenMP_impl)
  find_package(OpenMP)

  if(OPENMP_FOUND)
    message(STATUS "Found OpenMP.")
    if (TARGET OpenMP::OpenMP_C)
      link_libraries(OpenMP::OpenMP_C)
    endif()
    if (TARGET OpenMP::OpenMP_CXX)
      link_libraries(OpenMP::OpenMP_CXX)
    endif()
    if (TARGET OpenMP::Fortran)
      link_libraries(OpenMP::Fortran)
    endif()
    
    if(NOT OpenMP_FOUND)
      # for compatibility with older cmake version
      set(OpenMP_FOUND TRUE)
    endif()
  else()
    message(STATUS "OpenMP not available. Your program will lack parallelism.")
  endif()
endmacro()

macro(enable_OpenMP)
  set(enable TRUE)

  if(BUILDSYS_DISABLE_OPENMP)
    set(enable FALSE)
  elseif(INTERNAL_BUILDSYS_DISABLE_OPENMP)
    set(enable FALSE)
  endif()

  if(enable)
    enable_OpenMP_impl()
  else()
    message(STATUS "Disabling OpenMP support because of BUILDSYS_DISABLE_OPENMP.")
  endif()
endmacro()
