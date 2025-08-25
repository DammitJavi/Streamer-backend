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


//Build 
docker build -t streamer-docker .

//Short lived containers

--rm = Automatically removes once exiting --it = Interactive terminal (you can interact with the shell).
docker run --rm -it --net=host -p 8080:8080 streamer-docker

OR

//Want to use a previous container
docker run --name streamer-docker --net=host -p 8080:8080 streamer-docker

Clean up Docker:

docker image prune

or 

//Deletes all stopped containers, unused volumes, and dangling images
docker system prune
