FROM maven:3.6.3-openjdk-11 as build

EXPOSE 8000

ADD target/cardatabase-0.0.1-SNAPSHOT.jar /cardatabase.jar

ENTRYPOINT ["java", "-jar", "cardatabase.jar"]

