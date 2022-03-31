# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=./.github/workflows/path/to/artifact/App-0.0.1-SNAPSHOT.war

# cd /opt/app
WORKDIR /home/runner/work/springBootApp/springBootApp

# cp target/App-0.0.1-SNAPSHOT.war /opt/app/app.war
COPY ${JAR_FILE} app.war

# java -jar /opt/app/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]
