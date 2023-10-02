FROM eclipse-temurin:17-jdk-alpine
VOLUME /temp
ARG JAR_FILE=./build/libs/devops-assignment-testing-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
#COPY ./build/libs/test-strategy-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]