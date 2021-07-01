#!/bin/bash
export CICD_BUILD_IMAGE_NAME="d"
export CICD_BUILD_IMAGE_TAG="1"
export CICD_BUILD_IMAGE="${CICD_BUILD_IMAGE_NAME}:${CICD_BUILD_IMAGE_TAG}"
chmod +x ./build.sh 
./build.sh


# .watch kubectl --namespace default get all
