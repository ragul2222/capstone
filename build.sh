#!/bin/bash
IMAGE_NAME="my-dockimage"
TAG="latest"
DOCKERFILE_PATH="d/onedrive/devops/capstone-project/docker/Dockerfile"  # Replace with the path to your Dockerfile

# Build the Docker image
# docker build -t "$IMAGE_NAME:$TAG" -f "$DOCKERFILE_PATH" .
docker buildx build --platform linux/amd64,linux/arm64 -t "$IMAGE_NAME:$TAG" -f "$DOCKERFILE_PATH" .


# Check if the build was successful
if [ $? -eq 0 ]; then
echo "Docker image '$IMAGE_NAME:$TAG' successfully built."
else
  echo "Failed to build Docker image '$IMAGE_NAME:$TAG'."
  exit 1
fi
