#!/bin/bash
CMD="docker scan ${CICD_BUILD_IMAGE} --accept-license --dependency-tree --file ./Dockerfile --json --group-issues --severity"
for level in "low" "medium" "high"
do
    ${CMD} ${level} >> "./security/${level}.json"
done
