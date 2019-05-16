FROM java:8
VOLUME /tmp
EXPOSE 8081
ADD ./target/jb-hello-world-maven-0.1.0.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
