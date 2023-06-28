#!/bin/bash

source ./detect.sh

cd ..
"$container" build -t python_docker -f Dockerfile .
cd -
