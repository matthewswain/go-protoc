FROM golang:1.15-buster

ENV PROTOC_VERSION=3.14.0
WORKDIR /opt/protobuf

COPY install_protoc.sh .
RUN ./install_protoc.sh

RUN go get -u github.com/golang/protobuf/protoc-gen-go
