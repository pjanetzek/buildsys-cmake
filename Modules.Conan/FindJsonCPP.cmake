find_package(jsoncpp CONFIG)

if (TARGET jsoncpp::jsoncpp)
  set(JSONCPP_FOUND TRUE)
  set(JSONCPP_VERSION ${jsoncpp_VERSION})
  set(JSONCPP_LIBRARIES jsoncpp::jsoncpp)
  get_target_property(JSONCPP_INCLUDE_DIRS jsoncpp::jsoncpp INTERFACE_INCLUDE_DIRECTORIES)
  set(JsonCPP_FOUND TRUE)
  set(JsonCPP_VERSION ${jsoncpp_VERSION})
  set(JsonCPP_LIBRARIES jsoncpp::jsoncpp)
  get_target_property(JsonCPP_INCLUDE_DIRS jsoncpp::jsoncpp INTERFACE_INCLUDE_DIRECTORIES)
endif()
