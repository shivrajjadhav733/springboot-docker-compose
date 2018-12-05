# Spring Boot microservice using Docker Compose

1. Create a `Dockerfile` for creating a docker image from the Spring Boot Application
`FROM openjdk:8
VOLUME /tmp
ADD target/springboot-docker-compose.jar springboot-docker-compose.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "springboot-docker-compose.jar"]`

2. Create docker-compose.yml 
`version: '3'

services:
  springboot-docker-compose-app-container:
    image: springboot-docker-compose-app:1
    build:
      context: ./
      dockerfile: Dockerfile
    volumes:
      - /data/springboot-docker-compose-app
    ports:
      - "8081:8081"`


3. Create the Docker image (springboot-docker-compose) and start application using docker compose created in #2.
`docker-compose up`

4. Stop docker container
`docker-compose down`


## Useful Docker commands
- `docker images`
- `docker container ls`
- `docker logs <container_name>`
- `docker container rm <container_name>`
- `docker image rm <image_name>`
