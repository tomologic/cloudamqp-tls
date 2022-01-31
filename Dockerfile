FROM maven:3-openjdk-17 as builder
WORKDIR /workspace
COPY pom.xml pom.xml
COPY src src
RUN mvn --batch-mode compile package
CMD ["mvn", "exec:java"]

FROM openjdk:17-jdk
WORKDIR /usr/src/app
COPY --from=builder /workspace/target/cloudamqp-1.0-SNAPSHOT-jar-with-dependencies.jar /usr/src/app/cloudamqp-tls.jar
CMD ["java", "-Djavax.net.debug=all", "-jar", "cloudamqp-tls.jar"]
