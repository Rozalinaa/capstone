#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
DOCKERPATH=rozalina/capstoneproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl run capstoneprojectapp --image=docker.io/$DOCKERPATH --labels="app=capstoneprojectapp" --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
DEVOPS_POD=$(kubectl get pods -l app=capstoneprojectapp -o jsonpath='{.items[0].metadata.name}')
echo $DEVOPS_POD
echo "Forwarding..."

# Step 4:
# Forward the container port to a host
kubectl port-forward "$DEVOPS_POD" --address 0.0.0.0 5000:5000 
