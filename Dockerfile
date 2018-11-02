FROM openjdk:8-jdk-alpine
VOLUME /tmp
VOLUME /opt/iot-platform
ADD app.jar /opt/iot-platform/app.jar
RUN sh -c 'touch /opt/app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/iot-platform/app.jar"]