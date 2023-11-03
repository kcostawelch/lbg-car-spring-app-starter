FROM openjdk:11-jdk

COPY target/cardatabase-0.0.1-SNAPSHOT.jar cardatabase.jar

ENTRYPOINT ["java","-jar","/cardatabase.jar"]