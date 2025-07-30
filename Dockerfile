# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Build the JAR inside the container
RUN ./mvnw clean package -DskipTests

# Rename and run the JAR
CMD ["java", "-jar", "target/springbootrestapi-0.0.1-SNAPSHOT.jar"]
