FROM openjdk:21
EXPOSE 8080
ADD target/swe-645-cicd-hw3.jar swe-645-cicd-hw3.jar
#RUN curl -L -o /mysql-connector-java-5.1.34.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.34/mysql-connector-java-5.1.34.jar
#ENV CLASSPATH=/mysql-connector-java-5.1.34.jar:${CLASSPATH}
ENTRYPOINT ["java", "-jar", "/swe-645-cicd-hw3.jar"]
