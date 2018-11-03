FROM java:8
ADD target/iot-platform-0.0.1-SNAPSHOT.jar application.jar
RUN bash -c 'touch /application.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/application.jar"]