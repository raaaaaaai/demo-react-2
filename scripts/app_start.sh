#!/bin/bash

# Login to ECR
$(aws ecr get-login --no-include-email --region ap-south-1)

# Build and tag the Docker image
docker build -t reactapp:1.0 .
docker tag reactapp:1.0 154020000542.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest

# Push the Docker image to ECR
docker push 154020000542.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest
