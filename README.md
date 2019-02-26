# docker-redis-ubuntu
Tutorial for publishing a docker image to Docker Hub.

This repository builds and publishes the [appacademy/docker-redis-ubuntu](https://hub.docker.com/r/appacademy/docker-redis-ubuntu) to Docker Hub. This image is purely meant for learning and introduction to Docker, use the official [redis](https://hub.docker.com/_/redis) image for development/production use.

# Building and running sample app
```
cd app
docker-compose build
docker-compose up -d
docker-compose run app npm start
```

Output is `{ results: 'bar' }`.
