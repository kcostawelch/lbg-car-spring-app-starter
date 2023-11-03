FROM openjdk-11

EXPOSE 8000

ADD target/cardatabase-0.0.1-SNAPSHOT.jar /cardatabase.jar

ENTRYPOINT ["java", "-jar", "cardatabase.jar"]

