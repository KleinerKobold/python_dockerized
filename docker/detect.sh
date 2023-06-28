#!/bin/bash

# Überprüfen, ob Docker installiert ist
if command -v docker &> /dev/null; then
    container='docker'
    echo "Docker gefunden."
# Überprüfen, ob Podman installiert ist
elif command -v podman &> /dev/null; then
    container='podman'
    echo "Podman gefunden."
else
    echo "Weder Docker noch Podman gefunden."
    exit 1
fi
