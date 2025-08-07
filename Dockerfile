# # Use official OpenJDK image as a base
# FROM openjdk:17-jdk-slim

# # Set working directory
# WORKDIR /app

# # Copy all project files
# COPY . .

# # Give execution permission to mvnw
# RUN chmod +x mvnw

# # Build the JAR inside the container
# RUN ./mvnw clean package -DskipTests

# # Rename and run the JAR
# CMD ["java", "-jar", "target/springbootrestapi-0.0.1-SNAPSHOT.jar"]


# Use official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Install required tools (like bash)
RUN apt-get update && apt-get install -y bash

# Copy all project files
COPY . .

# Give permission to mvnw
RUN chmod +x mvnw

# Build the application JAR
RUN ./mvnw clean package -DskipTests

# Expose the port (optional but good practice)
EXPOSE 8080

# Run the JAR and allow Spring Boot to pick up env vars
CMD ["java", "-jar", "target/springbootrestapi-0.0.1-SNAPSHOT.jar"]
