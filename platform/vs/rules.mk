include $(PLATFORM_PATH)/syncd-vs.mk
include $(PLATFORM_PATH)/sonic-version.mk
include $(PLATFORM_PATH)/docker-sonic-vs.mk
include $(PLATFORM_PATH)/docker-syncd-vs.mk
include $(PLATFORM_PATH)/one-image.mk
include $(PLATFORM_PATH)/onie.mk
include $(PLATFORM_PATH)/kvm-image.mk

-include $(SRC_PATH)/broadcom-exclusive/installers.mk

SONIC_ALL += $(SONIC_ONE_IMAGE) $(SONIC_KVM_IMAGE) $(DOCKER_SONIC_VS)
