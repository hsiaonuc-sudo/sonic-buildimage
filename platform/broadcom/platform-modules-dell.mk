# Dell Z9100, S6100, Z9264F, S5232, Z9332, S5248F Platform modules

DELL_Z9100_PLATFORM_MODULE_VERSION = 1.1
DELL_S6100_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9264F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5232F_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9332F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5248F_PLATFORM_MODULE_VERSION = 1.1
DELL_S3000_PLATFORM_MODULE_VERSION = 1.1

export DELL_S6000_PLATFORM_MODULE_VERSION
export DELL_Z9100_PLATFORM_MODULE_VERSION
export DELL_S6100_PLATFORM_MODULE_VERSION
export DELL_Z9264F_PLATFORM_MODULE_VERSION
export DELL_S5232F_PLATFORM_MODULE_VERSION
export DELL_Z9332F_PLATFORM_MODULE_VERSION
export DELL_S5248F_PLATFORM_MODULE_VERSION
export DELL_S3000_PLATFORM_MODULE_VERSION

DELL_Z9100_PLATFORM_MODULE = platform-modules-z9100_$(DELL_Z9100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9100_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-dell
$(DELL_Z9100_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(DELL_Z9100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_z9100_c2538-r0
SONIC_DPKG_DEBS += $(DELL_Z9100_PLATFORM_MODULE)

DELL_S6100_PLATFORM_MODULE = platform-modules-s6100_$(DELL_S6100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S6100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_s6100_c2538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S6100_PLATFORM_MODULE)))

DELL_Z9264F_PLATFORM_MODULE = platform-modules-z9264f_$(DELL_Z9264F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9264F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_z9264f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_Z9264F_PLATFORM_MODULE)))

DELL_S5232F_PLATFORM_MODULE = platform-modules-s5232f_$(DELL_S5232F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5232F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5232f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5232F_PLATFORM_MODULE)))

DELL_Z9332F_PLATFORM_MODULE = platform-modules-z9332f_$(DELL_Z9332F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9332F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_z9332f_d1508-r0 
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_Z9332F_PLATFORM_MODULE)))

DELL_S5248F_PLATFORM_MODULE = platform-modules-s5248f_$(DELL_S5248F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5248F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5248f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5248F_PLATFORM_MODULE)))

DELL_S3000_PLATFORM_MODULE = platform-modules-s3000_$(DELL_S3000_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S3000_PLATFORM_MODULE)_PLATFORM = x86_64-dell_s3000_c2338-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S3000_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(DELL_Z9100_PLATFORM_MODULE)

