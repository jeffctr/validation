FROM golang:1.16

WORKDIR /go/src/app

RUN apt-get update && apt-get install -y git vim wget curl
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.41.1
