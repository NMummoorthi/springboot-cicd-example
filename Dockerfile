# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-ea

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
# Assuming your JAR file is named 'my-spring-boot-app.jar' in the target/ directory after building
COPY target/springboot-cicd-example.jar /app/springboot-cicd-example.jar

# Expose the port your application runs on (e.g., 8080)
EXPOSE 8080

# Define the command to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/springboot-cicd-example.jar"]