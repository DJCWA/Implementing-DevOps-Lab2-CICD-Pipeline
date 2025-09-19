# Use a small Java 11 runtime image
FROM eclipse-temurin:11-jre-alpine

EXPOSE 8080
WORKDIR /usr/app

# Copy whatever jar Gradle produced and rename it to app.jar inside the image
COPY build/libs/*.jar /usr/app/app.jar

# Run it
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]
