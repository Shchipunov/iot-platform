FROM openjdk:8-jdk-alpine
ADD target/iot-platform-0.0.1-SNAPSHOT.jar application.jar
ENTRYPOINT ["/"]
CMD ["-jar","application.jar"]