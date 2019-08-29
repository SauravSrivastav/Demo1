
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/studentapp-2.5-SNAPSHOT.jar t1-student-maven-proj.jar
EXPOSE 8081
#ENTRYPOINT exec java $JAVA_OPTS -jar t1-student-maven-proj.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar t1-student-maven-proj.jar
