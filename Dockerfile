FROM openjdk:8

ENV APP_NAME jenkins-test2
ENV APP_VERSION 0.0.1-SNAPSHOT

COPY target/${APP_NAME}-${APP_VERSION}.jar /opt/app.jar

ENTRYPOINT ["java","-Dfile.encoding=UTF-8","-Dspring.profiles.active=prod", "-jar","/opt/app.jar"]