#
# Makefile
#
# Requirement:
#	Some `docker-machine` is useable

IMAGE=linux

all: build launch

build:
	docker build -t $(IMAGE) .

launch: build
	docker run -it $(IMAGE) /bin/bash

.PHONY: all build launch
