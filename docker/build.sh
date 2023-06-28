#!/bin/bash

source ./detect_container.sh

cd ..
"$container" build -t python_docker -f Dockerfile .
cd -
