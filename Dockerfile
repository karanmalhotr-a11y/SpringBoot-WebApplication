# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM openjdk:11-jre-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY /target/spring-boot-web.jar /app

EXPOSE 8080

# This should not be changed
CMD ["java","-jar","spring-boot-web.jar"]
