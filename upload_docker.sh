#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=gauravkr04/predict

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag  83738c9e8640 $dockerpath:v1.0.0

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.0