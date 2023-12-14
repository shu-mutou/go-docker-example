#!/bin/bash

IMAGE_TAG=${IMAGE_TAG:-go-sample}

docker build -t $IMAGE_TAG -f Dockerfile-prod .
