## Use an official Tomcat runtime as a parent image
#FROM tomcat:latest
#
## Copy the WAR file into the webapps directory of Tomcat
#COPY target/swe-645-cicd-hw3.war /usr/local/tomcat/webapps/
#
## Expose port 8080 (the default Tomcat port)
#EXPOSE 8080
#
## Start Tomcat when the container starts
#CMD ["catalina.sh", "run"]
#FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
#WORKDIR /opt
#ENV PORT 8080
#EXPOSE 8080
#COPY target/*.jar /opt/app.jar
#ENTRYPOINT exec java $JAVA_OPTS -jar app.jar

FROM openjdk:8
EXPOSE 8080
ADD target/swe-645-cicd-hw3.jar swe-645-cicd-hw3.jar
ENTRYPOINT["java", "-jar", "/swe-645-cicd-hw3.jar"]