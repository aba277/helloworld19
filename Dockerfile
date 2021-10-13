# Pull base image 
From tomcat:8-jre8 
Run apt-update

# Maintainer 
MAINTAINER "kserge2001@yahoo.fr" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
