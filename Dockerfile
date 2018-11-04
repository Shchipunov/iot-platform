FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/iot-platform-0.0.1-SNAPSHOT.jar application.jar
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/application.jar"]