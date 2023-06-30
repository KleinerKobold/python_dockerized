#!/usr/bin/env bash
#####################
# Shell options
#####################
set -o errexit   # shell will exit whenever a command has non zero return code
set -o nounset   # undefined variables are treated as errors
set -o pipefail  # piped commands will be considered successful if all the commands involved are executed without errors

#####################
# Main Script
#####################
# Check if docker is installed
if command -v docker &> /dev/null; then
    container=$(which docker)
    echo "docker cli found: ${container}"
# Check if podman is installed
elif command -v podman &> /dev/null; then
    container=$(which podman)
    echo "podman cli found: ${container}"
else
    echo "neither docker nor podman found"
    exit 1
fi
