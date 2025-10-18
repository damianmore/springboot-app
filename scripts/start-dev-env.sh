#!/bin/bash
echo "Starting postgres container"
docker compose up -d

echo "Starting Spring Boot app"
./mvnw spring-boot:run