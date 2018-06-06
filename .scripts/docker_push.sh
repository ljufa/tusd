#!/usr/bin/env bash
docker build -t "$DOCKER_IMAGE_TAG" .
echo "$DOCKER_HUB_PASSWORD" | docker login -u "$DOCKER_HUB_NAME" --password-stdin
docker push "$DOCKER_IMAGE_TAG"
