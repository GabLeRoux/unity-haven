#!/usr/bin/env bash

set -e

docker run \
  -e TEST_PLATFORM="foo" \
  -e UNITY_USERNAME \
  -e UNITY_PASSWORD \
  -w /project/ \
  -v $(pwd):/project/ \
  $IMAGE_NAME \
  /bin/bash -c "./ci/get_license.sh"
