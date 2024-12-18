#!/bin/bash

# Update the package list and install curl if it's not installed
apt-get update -y && apt-get install -y curl

# Install Docker
curl -fsSL https://get.docker.com | sh