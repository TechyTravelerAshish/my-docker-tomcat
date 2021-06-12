##FROM tomcat:latest

FROM tomcat:8.0-alpine
## This works in Local Desktop
## ADD sample.war /usr/local/tomcat/webapps/
##COPY sample.war /usr/local/tomcat/webapps/


ADD Dynatrace_TestApp1.war /usr/local/tomcat/webapps/


EXPOSE 8080
CMD ["catalina.sh", "run"]
