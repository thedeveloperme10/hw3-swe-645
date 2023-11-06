# Use an official Tomcat runtime as a parent image
FROM tomcat:latest

# Copy the WAR file into the webapps directory of Tomcat
COPY target/hw3-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose port 8080 (the default Tomcat port)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
