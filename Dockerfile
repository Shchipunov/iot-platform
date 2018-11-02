FROM java:8
VOLUME /tmp
VOLUME /opt/iot-platform
ADD app.jar /opt/iot-platform/app.jar
RUN sh -c 'touch /opt/iot-platform/app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/iot-platform/app.jar"]