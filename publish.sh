#!/bin/sh

# Build Dockerfile in the same (.) directory
# and tag with docker-redis-ubuntu as the name
# of the image
docker build -t docker-redis-ubuntu .

# Tag local image to remote repository
docker tag docker-redis-ubuntu appacademy/docker-redis-ubuntu:latest

# Push to Docker Hub as latest
docker push appacademy/docker-redis-ubuntu

# Note that you need to create a Docker Hub
# user and run `docker login` to create a new
# Docker repository that you can push to, this
# is quite similar to Git and Github
