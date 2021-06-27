#!/bin/bash
export CICD_BUILD_IMAGE_NAME="p"
export CICD_BUILD_IMAGE_TAG="3"
export CICD_BUILD_IMAGE="${CICD_BUILD_IMAGE_NAME}:${CICD_BUILD_IMAGE_TAG}"
chmod +x ./build.sh ./scan.sh ./deploy.sh
./build.sh
./scan.sh
./deploy.sh


watch kubectl --namespace default get all
