FROM openjdk:8
VOLUME /tmp
ADD target/springboot-docker-compose.jar springboot-docker-compose.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","springboot-docker-compose.jar"]