include asmake-common/base.makefile
include asmake-common/git.makefile
include asmake-common/docker.makefile

DOCKER_REGISTRY_HOST = dlimkin

NAME = osm-tools
VERSION = 3.32.3

docker-build: as-dk-build

docker-push: as-dk-push
