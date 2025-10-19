FROM maven:3.9-eclipse-temurin-21-alpine AS build
WORKDIR /app

#  cache dependencies ( POM.xml only changes when dependencies change
# this is so we dont have to reinstall dependencies everytime we build the image
COPY pom.xml .
RUN mvn dependency:go-offline

# get source and then build clean
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jdk
RUN useradd -m spring
USER spring
WORKDIR /app

# Copy the JAR from build
COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
