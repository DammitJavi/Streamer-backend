FROM eclipse-temurin:21-jdk
RUN groupadd --system streamer && useradd --system --no-create-home --gid streamer streamer
USER streamer:streamer
ARG JAR_FILE=target/streamer-backend-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} cont-streamer.jar
ENTRYPOINT [ "java", "-jar", "/cont-streamer.jar" ]