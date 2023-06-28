#!/bin/bash

# Überprüfen, ob Docker installiert ist
if command -v docker &> /dev/null; then
    container='docker'
    echo "Docker found."
# Überprüfen, ob Podman installiert ist
elif command -v podman &> /dev/null; then
    container='podman'
    echo "Podman found."
else
    echo "neither docker nor podmand found"
    exit 1
fi
