#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=demolocal
dockerid=ctanlcs
dockertag=v1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerid $dockerpath"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin
docker tag $dockerpath:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerid/$dockerpath:$dockertag
