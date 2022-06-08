#!/usr/bin/env bash
export GIT_SHA=$(git rev-parse --short HEAD)
export IMAGE_NAME=flask-python-stub
export ECR_BASE_NAME=jungwirth
export SHA_TAG=${ECR_BASE_NAME}/${IMAGE_NAME}:${GIT_SHA}
export LATEST_TAG=${ECR_BASE_NAME}/${IMAGE_NAME}:latest

docker build -t ${SHA_TAG} -t ${LATEST_TAG} .
docker push ${LATEST_TAG}
docker push ${SHA_TAG}
