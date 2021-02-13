#!/bin/bash
export DOCKER_BUILDKIT=1
export IMAGE_NAME="blog_image_2"
export CONT_NAME="blog_container_2"
docker rm -f $CONT_NAME || true
docker image rm -f $IMAGE_NAME || true
docker build --tag=$IMAGE_NAME .
docker run --name=$CONT_NAME -it --rm -d -v $(pwd):/app -p 4000:4000 $IMAGE_NAME:latest
