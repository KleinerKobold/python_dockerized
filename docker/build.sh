#!/usr/bin/env bash
#####################
# Shell options
#####################
set -o errexit   # shell will exit whenever a command has non zero return code
set -o nounset   # undefined variables are treated as errors
set -o pipefail  # piped commands will be considered successful if all the commands involved are executed without errors
#####################
# Variables
#####################
SCRIPT_DIR=$(dirname "$0")

#####################
# Main Script
#####################
# shellcheck source=docker/detect.sh
source "${SCRIPT_DIR}/detect.sh"

"$container" build -t python_docker -f "${SCRIPT_DIR}/../Dockerfile" .
