#!/bin/bash

docker build -t go-sample:dev .
docker run --rm -it \
  -e HTTP_PROXY=${HTTP_PROXY} \
  -e HTTPS_PROXY=${HTTPS_PROXY} \
  -e CGO_ENABLED=0 \
  -e GOOS=linux \
  -e GOARCH=amd64 \
  -v $(pwd):/go/src/go-sample \
  --name go-sample-dev \
  --entrypoint sh \
  go-sample:dev \
