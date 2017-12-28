default: build

.PHONY: build
build: build-go-local build-docker

.PHONY: build-go-docker
build-go-docker:
	@ echo "TODO: build-go-docker"
	@ exit 1

.PHONY: build-go-local
build-go-local:
	@ echo "Building go binary.."
	@ GOOS=linux GOARCH=amd64 GCO_ENABLED=0 go build -a -tags netgo -installsuffix netgo -o bin/dummy-server-linux
	@ echo "Built:"
	@ echo "    bin/server-linux"

.PHONY: build-docker
build-docker:
	@ docker build --force-rm --no-cache --compress -t rms1000watt/dummy-server:latest .
	@ echo "Built:"
	@ echo "    rms1000watt/dummy-server:latest"
