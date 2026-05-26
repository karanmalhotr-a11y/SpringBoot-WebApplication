# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY target/spring-boot-web.jar /app
#build name from pom file

# This should not be changed
CMD ["java","-jar","spring-boot-web.jar"]
