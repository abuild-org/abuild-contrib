PKG_CONFIG_PACKAGE := tps-lib-1.0
BUILD_ITEM_RULES := contrib-pkg-config

# Tell pkg-config where to find our pc file since it is not in the
# default location.  This wouldn't be necessary for a library
# installed on the system.
PKG_CONFIG_PC_DIR := $(abspath ../../tps-lib-impl/abuild-$(ABUILD_PLATFORM))
