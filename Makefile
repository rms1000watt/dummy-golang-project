default: build

GO_DOCKER_VERSION ?= 1.9.2-alpine3.7
GO_COMMAND_BUILD := GOOS=linux GOARCH=amd64 GCO_ENABLED=0 go build -a -tags netgo -installsuffix netgo -o bin/dummy-server-linux
DOCKER_COMMAND_GO := docker run -it --rm -v $(shell pwd | awk -F '/src/github.com' '{printf $$1}'):/go -w /go/src/github.com/rms1000watt/dummy-golang-project golang:$(GO_DOCKER_VERSION) sh -c "$(GO_COMMAND_BUILD)"

.PHONY: build
build: build-go-docker build-docker

.PHONY: build-go-docker
build-go-docker:
	@ echo "Building go binary in docker.."
	@ $(DOCKER_COMMAND_GO)
	@ echo "Built:"
	@ echo "    bin/server-linux"

.PHONY: build-go-local
build-go-local:
	@ echo "Building go binary.."
	@ $(GO_COMMAND_BUILD)
	@ echo "Built:"
	@ echo "    bin/server-linux"

.PHONY: build-docker
build-docker:
	@ docker build --force-rm --no-cache --compress -t rms1000watt/dummy-server:latest .
	@ echo "Built:"
	@ echo "    rms1000watt/dummy-server:latest"
