#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=bswhite/udmlproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment predict --image=docker.io/bswhite/udmlproject

# Step 3:
# List kubernetes pods
kubectl get pods

# Save pod name and view logs 
output="$(kubectl get pods -o=name)"
kubectl logs $output


echo "==========================="

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/predict 8000:80
