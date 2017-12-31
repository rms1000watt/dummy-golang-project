#!/usr/bin/env sh

docker build --build-arg GOLANG_DOCKER_VERSION=${GO_DOCKER_VERSION:-1.9.2-alpine3.7} \
  --force-rm \
  --no-cache \
  --compress \
  -t rms1000watt/dummy-golang-project:latest .
