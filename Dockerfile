FROM golang:1.11.0-alpine3.7 as builder
ENV CGO_ENABLED=0
WORKDIR /go/src/github.com/rms1000watt/dummy-golang-project
COPY . .
RUN go test
RUN GOOS=linux GOARCH=amd64 go build -a -tags netgo -installsuffix netgo -o bin/dummy-golang-project

FROM scratch
COPY --from=builder /go/src/github.com/rms1000watt/dummy-golang-project/bin/dummy-golang-project /dummy-golang-project
ENTRYPOINT [ "/dummy-golang-project" ]
