#!/bin/bash

source ./detect.sh

"$container" run -v $(pwd):/apps/my_module/out  \
    --network host \
    --env-file=../.env \
    python_docker:latest 