#!/bin/sh

CONTAINER_NAME=${CONTAINER_NAME:-go-sample-production}
PRODUCTION_PORT=${PRODUCTION_PORT:-80}
IMAGE_TAG=${IMAGE_TAG:-go-sample}

EXISTING_CONTAINER_ID="$(docker ps --all --format {{.ID}} -f name=${CONTAINER_NAME})"
if [ -n "${EXISTING_CONTAINER_ID}" ]; then
  echo "Stop existing container: ${EXISTING_CONTAINER_ID}"
  docker stop ${EXISTING_CONTAINER_ID}
fi

sleep 10

if [ -n "${DOCKER_REGISTRY_HOST}" ]; then
  DOCKER_REGISTRY_HOST="${DOCKER_REGISTRY_HOST}/"
fi

docker run --rm -d -p ${PRODUCTION_PORT}:8080 --name ${CONTAINER_NAME} ${DOCKER_REGISTRY_HOST}${IMAGE_TAG}
