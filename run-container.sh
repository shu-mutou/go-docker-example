#!/bin/bash

docker run -e HTTP_PROXY=${HTTP_PROXY} -e HTTPS_PROXY=${HTTPS_PROXY} -p 8080:8080 go-sample
