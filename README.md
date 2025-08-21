# Streamer-backend

This is going to be the readme.md

Project: Streamer-Backend

Run Spring Boot Project:
mvn spring-boot:run

Package and create image for Docker
mvn clean package
./mvnw package && java -jar target/streamer-backend-0.1.0.jar //Issue with naming. Check before next command.
java -jar target/streamer-backend-0.1.0-SNAPSHOT.jar  


Docker Info:

docker build -t streamer-docker . 
docker run --net=host -p 8080:8080 streamer-docker
