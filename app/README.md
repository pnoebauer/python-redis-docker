## Compose sample application

### Python/Flask application using a Redis database

Project structure:

```
.
├── Dockerfile
├── README.md
├── app.py
├── docker-compose.yml
└── requirements.txt
```

[_docker-compose.yml_](docker-compose.yml)

## Dockerfile task notes:
```
1. Working folder inside the container is /code
2. In Python applications, the file listing all dependencies is called requirements.txt. Treat this in the same way you would treat a package.json file
3. You may need to look up the command to install dependencies in Python.
3. You may need to look up the command to start up a Python web app once everything else is ready.

Note: You might need to look up the default port for redis.
```

## Quick Start

```bash
# Build in Docker
docker build .
# To run the container and go inside via bash
docker run -it IMAGE_ID bash

# build image and tag it
docker build --platform linux/amd64 -t pnoebauer/redis-python-flask-app:1.0 ./app

# push to docker hub
docker login
docker push pnoebauer/redis-python-flask-app:1.0

```

## Docker-compose task notes:
```
1. Redis image is redislabs/redismod
2. Working folder inside the container is /code
3. Web app depends on Redis so Redis will boot first

Note: You might need to look up the default port for redis.

```

## Debugging

```bash
# Show all containers
docker ps

# Show logs
docker logs CONTAINER_ID

# Remove container and all its logs
docker rm CONTAINER_ID

# Live logs
docker attach CONTAINER_ID

# Show container info
docker inspect CONTAINER_ID

# Show images
docker images

# Cleanup unused images
docker image prune

# Cleanup all images not used by at least one container
docker image prune -a

# Cleanup all stopped containers
docker container prune

# Cleanup volumes not used by at least one container
docker volume prune

# Cleanup everything
docker system prune

```

# Play with docker
https://labs.play-with-docker.com

```bash
# create volume
docker volume create myremotevolume

# check volumes
docker volume ls

# drag docker compose into editor
docker-compose pull

# run
docker-compose up
```
