# Use official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Give execution permission to mvnw
RUN chmod +x mvnw

# Build the JAR inside the container
RUN ./mvnw clean package -DskipTests

# Rename and run the JAR
CMD ["java", "-jar", "target/springbootrestapi-0.0.1-SNAPSHOT.jar"]
