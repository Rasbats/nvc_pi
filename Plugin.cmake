# ~~~
# Summary:      Local, non-generic plugin setup
# Copyright (c) 2020-2021 Mike Rossiter
# License:      GPLv3+
# ~~~

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.


# -------- Options ----------

set(OCPN_TEST_REPO
    "mike-rossiter/nvc-alpha"
    CACHE STRING "Default repository for untagged builds"
)
set(OCPN_BETA_REPO
    "mike-rossiter/nvc-beta"
    CACHE STRING
    "Default repository for tagged builds matching 'beta'"
)
set(OCPN_RELEASE_REPO
    "mike-rossiter/nvc-prod"
    CACHE STRING
    "Default repository for tagged builds not matching 'beta'"
)

#
#
# -------  Plugin setup --------
#
set(PKG_NAME nvc_pi)
set(PKG_VERSION  3.0.0)
set(PKG_PRERELEASE "")  # Empty, or a tag like 'beta'

set(DISPLAY_NAME NVCharts)    # Dialogs, installer artifacts, ...
set(PLUGIN_API_NAME NVCharts) # As of GetCommonName() in plugin API
set(PKG_SUMMARY "NV Charts for OpenCPN")
set(PKG_DESCRIPTION [=[
Provides support for NV Charts raster navigation charts.
Supported charts must have been installed with the
appropriate decryption dll(s) available.
]=])

set(PKG_AUTHOR "Mike Rossiter")
set(PKG_IS_OPEN_SOURCE "yes")
set(PKG_HOMEPAGE https://github.com/Rasbats/nvc_pi)
set(PKG_INFO_URL https://opencpn.org/OpenCPN/plugins/nvc.html)

set(SRC
          src/nvc_pi.h
          src/nvc_pi.cpp
          src/chart.cpp
          src/chart.h
          src/ellipse.c
)

set(PKG_API_LIB api-16)  #  A dir in opencpn-libs/ e. g., api-17 or api-16

macro(late_init)
  # Perform initialization after the PACKAGE_NAME library, compilers
  # and ocpn::api is available.
endmacro ()

macro(add_plugin_libraries)
  # Add libraries required by this plugin

  # The wxsvg library enables SVG overall in the plugin
  add_subdirectory("${CMAKE_SOURCE_DIR}/libs/wxsvg")
  target_link_libraries(${PACKAGE_NAME} ocpn::wxsvg)
endmacro ()
