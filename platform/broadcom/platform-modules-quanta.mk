# Quanta Platform modules

QUANTA_IX1B_32X_PLATFORM_MODULE_VERSION = 1.0
QUANTA_IX7_32X_PLATFORM_MODULE_VERSION = 1.0
QUANTA_IX8_56X_PLATFORM_MODULE_VERSION = 1.0
QUANTA_IX8C_56X_PLATFORM_MODULE_VERSION = 1.0
QUANTA_IX9_32X_PLATFORM_MODULE_VERSION = 1.0

export QUANTA_IX1B_32X_PLATFORM_MODULE_VERSION
export QUANTA_IX7_32X_PLATFORM_MODULE_VERSION
export QUANTA_IX8_56X_PLATFORM_MODULE_VERSION
export QUANTA_IX8C_56X_PLATFORM_MODULE_VERSION
export QUANTA_IX9_32X_PLATFORM_MODULE_VERSION

QUANTA_IX1B_32X_PLATFORM_MODULE = sonic-platform-quanta-ix1b-32x_$(QUANTA_IX1B_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(QUANTA_IX1B_32X_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-quanta
$(QUANTA_IX1B_32X_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(QUANTA_IX1B_32X_PLATFORM_MODULE)_PLATFORM = x86_64-quanta_ix1b_rglbmc-r0
SONIC_DPKG_DEBS += $(QUANTA_IX1B_32X_PLATFORM_MODULE)

QUANTA_IX7_32X_PLATFORM_MODULE = sonic-platform-quanta-ix7-32x_$(QUANTA_IX7_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(QUANTA_IX7_32X_PLATFORM_MODULE)_PLATFORM = x86_64-quanta_ix7_rglbmc-r0
$(eval $(call add_extra_package,$(QUANTA_IX1B_32X_PLATFORM_MODULE),$(QUANTA_IX7_32X_PLATFORM_MODULE)))

QUANTA_IX8_56X_PLATFORM_MODULE = sonic-platform-quanta-ix8-56x_$(QUANTA_IX8_56X_PLATFORM_MODULE_VERSION)_amd64.deb
$(QUANTA_IX8_56X_PLATFORM_MODULE)_PLATFORM = x86_64-quanta_ix8_rglbmc-r0
$(eval $(call add_extra_package,$(QUANTA_IX1B_32X_PLATFORM_MODULE),$(QUANTA_IX8_56X_PLATFORM_MODULE)))

QUANTA_IX8C_56X_PLATFORM_MODULE = sonic-platform-quanta-ix8c-56x_$(QUANTA_IX8C_56X_PLATFORM_MODULE_VERSION)_amd64.deb
$(QUANTA_IX8C_56X_PLATFORM_MODULE)_PLATFORM = x86_64-quanta_ix8c_bwde-r0
$(eval $(call add_extra_package,$(QUANTA_IX1B_32X_PLATFORM_MODULE),$(QUANTA_IX8C_56X_PLATFORM_MODULE)))

QUANTA_IX9_32X_PLATFORM_MODULE = sonic-platform-quanta-ix9-32x_$(QUANTA_IX9_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(QUANTA_IX9_32X_PLATFORM_MODULE)_PLATFORM = x86_64-quanta_ix9_bwde-r0
$(eval $(call add_extra_package,$(QUANTA_IX1B_32X_PLATFORM_MODULE),$(QUANTA_IX9_32X_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(QUANTA_IX1B_32X_PLATFORM_MODULE)
