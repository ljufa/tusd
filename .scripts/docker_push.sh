#!/usr/bin/env bash
docker --version
docker login --help
IMAGE_NAME="$DOCKER_USERNAME/$DOCKER_IMAGE_TAG"
echo "Image name $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push "$IMAGE_NAME"
