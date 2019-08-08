FROM gcr.io/distroless/java

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS 

EXPOSE 8080

COPY ./pre-built/app-v1.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar", "${JAVA_OPTS}", "-Djava.security.egd=file:/dev/./urandom"]
