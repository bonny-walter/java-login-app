# Use an official Tomcat image from Docker Hub
FROM tomcat:9.0

# Set environment variables if needed
ENV TZ=UTC

# Remove the default ROOT application from Tomcat (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file into the Tomcat webapps directory
COPY target/dptweb-1.0.war  /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
