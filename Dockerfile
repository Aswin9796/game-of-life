# Use the official OpenJDK image as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Install git to be able to clone the repository
RUN apt-get update 

# Build the Java application
RUN javac GameOfLife.java

# Expose any necessary ports (if applicable)
# EXPOSE 8081

# Command to run the Java application
CMD ["java", "GameOfLife"]
