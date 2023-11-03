# Stage 1: Build the application
FROM maven:3.6.3-openjdk-11 as build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn package -e

# Stage 2: Run the application
FROM openjdk:11-jre
COPY --from=build /app/target/cardatabase-0.0.1-SNAPSHOT.jar /cardatabase.jar
ENTRYPOINT ["java","-jar","/cardatabase.jar"]
