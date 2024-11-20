FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container
COPY target/account-0.0.1-SNAPSHOT.jar app.jar
# Expose the port your application runs on
EXPOSE 8081
# Define the command to run the application
ENTRYPOINT ["java","-jar","app.jar"]
