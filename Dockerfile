# Use OpenJDK base image to compile and run Java
FROM openjdk:21-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy Java source code into the container
COPY HelloWorld.java /app

# Compile the Java program
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
