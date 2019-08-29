# docker image for BroadViewAgent

DOCKER_BROADVIEW = docker-broadview.gz
$(DOCKER_BROADVIEW)_PATH = $(DOCKERS_PATH)/docker-broadview

$(DOCKER_BROADVIEW)_DEPENDS += $(SWSS) $(REDIS_TOOLS) $(LIBSWSSCOMMON)
$(DOCKER_BROADVIEW)_DEPENDS +=  $(SONIC_BROADVIEW)
$(DOCKER_BROADVIEW)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE_STRETCH)

SONIC_DOCKER_IMAGES += $(DOCKER_BROADVIEW)
SONIC_INSTALL_DOCKER_IMAGES += $(DOCKER_BROADVIEW)
SONIC_STRETCH_DOCKERS += $(DOCKER_BROADVIEW)

$(DOCKER_BROADVIEW)_CONTAINER_NAME = broadview
$(DOCKER_BROADVIEW)_RUN_OPT += --net=host --privileged -t
$(DOCKER_BROADVIEW)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_BROADVIEW)_RUN_OPT += -v /host/warmboot:/var/warmboot
