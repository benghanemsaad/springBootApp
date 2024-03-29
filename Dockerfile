# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

RUN pwd
# Refer to Maven build -> finalName
ARG JAR_FILE=target/App-0.0.1-SNAPSHOT.war

# cd /opt/app
WORKDIR /opt/app

# cp target/App-0.0.1-SNAPSHOT.war /opt/app/app.war
COPY ${JAR_FILE} app.war

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
