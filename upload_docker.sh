#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
DOCKERPATH=rozalina/helloworldproj

# Step 2:  
# Authenticate & tag
docker tag devops $DOCKERPATH

docker login
echo "Docker ID and Image: $DOCKERPATH"

# Step 3:
# Push image to a docker repository
docker push $DOCKERPATH

