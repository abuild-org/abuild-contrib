_UNDEFINED := $(call undefined_vars,PKG_CONFIG_PACKAGE)
ifneq ($(words $(_UNDEFINED)),0)
$(error The following variables are undefined: $(_UNDEFINED))
endif

PKG_CONFIG_PC_DIR ?=
PKG_CONFIG_INTERFACE ?= pkg-config.interface

all:: $(PKG_CONFIG_INTERFACE) ;

$(PKG_CONFIG_INTERFACE):
	@$(PRINT) Generating $@
	$(abDIR_contrib-pkg-config)/gen_interface \
	   $(PKG_CONFIG_PACKAGE) "$(PKG_CONFIG_PC_DIR)" $(PKG_CONFIG_INTERFACE)
