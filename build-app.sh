#!/bin/bash

mkdir -p build
docker build -t go-sample:build .
docker run --rm \
  -e HTTP_PROXY=${HTTP_PROXY} \
  -e HTTPS_PROXY=${HTTPS_PROXY} \
  -e CGO_ENABLED=0 \
  -e GOOS=linux \
  -e GOARCH=amd64 \
  -v $(pwd):/go/src/go-sample \
  --name go-sample-build \
  go-sample:build \
  build -a -o build/hello
