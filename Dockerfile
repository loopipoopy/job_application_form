FROM docker.io/eclipse-temurin:21-jre

WORKDIR /app
COPY target/job-application-form-0.0.1-SNAPSHOT.jar /app/job-application-form-0.0.1-SNAPSHOT.jar
EXPOSE 8080/tcp
CMD ["java", "-XX:+UseG1GC", "-jar", "job-application-form-0.0.1-SNAPSHOT.jar"]