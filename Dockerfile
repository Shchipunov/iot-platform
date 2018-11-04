FROM alpine-jdk:base
ADD target/iot-platform-0.0.1-SNAPSHOT.jar /opt/lib/application.jar
ENTRYPOINT ["/usr/bin/java"]
ENTRYPOINT ["java", "-jar","/opt/lib/application.jar"]