# Use official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy built JAR file to container
COPY target/app.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
