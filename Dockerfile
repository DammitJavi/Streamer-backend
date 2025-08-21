FROM eclipse-temurin:21-jdk-alpine
RUN addgroup -S streamer && adduser -S -D -G streamer streamer
USER streamer:streamer
ARG JAR_FILE=target/streamer-backend-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} cont-streamer.jar
ENTRYPOINT [ "java", "-jar", "/cont-streamer.jar" ]