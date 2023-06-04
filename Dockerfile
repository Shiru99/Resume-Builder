FROM maven:latest AS build
WORKDIR /app

# Copy the pom.xml file and download the dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the source code and build the application
COPY src ./src
RUN mvn package -DskipTests


FROM openjdk:21-jdk
WORKDIR /app
COPY --from=build /app/target/resume-builder-2.0.0.jar /app/resume-builder.jar
EXPOSE 8080
CMD ["java", "-jar", "resume-builder.jar"]
