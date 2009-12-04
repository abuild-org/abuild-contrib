export SKIP_TEST := 0
ifeq ($(ABUILD_PLATFORM_OS), windows)
 # We make no attempt to support pkg-config on windows, even if cygwin
 # pkg-config is available.
 SKIP_TEST := 1
endif
pkg_config_check := $(shell pkg-config --version 2>/dev/null || echo missing)
ifeq ($(pkg_config_check), missing)
 SKIP_TEST := 1
endif

ifeq ($(SKIP_TEST), 1)

RULES := empty

else

TARGETS_bin := prog
SRCS_bin_prog := prog.cc
RULES := ccxx

endif
