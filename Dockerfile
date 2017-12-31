ARG GO_DOCKER_VERSION=1.9.2-alpine3.7

FROM golang:${GO_DOCKER_VERSION} as builder
WORKDIR /go/src/github.com/rms1000watt/dummy-golang-project/
COPY main.go .
RUN GOOS=linux GOARCH=amd64 GCO_ENABLED=0 go build -a -tags netgo -installsuffix netgo -o bin/dummy-golang-project

FROM scratch
COPY --from=builder /go/src/github.com/rms1000watt/dummy-golang-project/bin/dummy-golang-project /dummy-golang-project
ENTRYPOINT [ "/dummy-golang-project" ]
