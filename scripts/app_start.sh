#!/bin/bash

# Login to ECR
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 154020000542.dkr.ecr.ap-south-1.amazonaws.com
# pull docker image
docker pull 154020000542.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest

# run the docker image
docker run -d -p 3000:3000 154020000542.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest
