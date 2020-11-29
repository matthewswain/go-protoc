#! /bin/sh
set -e

apt-get update
apt-get install unzip -y

curl -LsS https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-linux-x86_64.zip > protobuf.zip
unzip -o protobuf.zip -d /usr/local bin/protoc
unzip -o protobuf.zip -d /usr/local 'include/*'
rm protobuf.zip

apt-get remove unzip -y
apt-get clean
rm -rf /var/lib/apt/lists/*
