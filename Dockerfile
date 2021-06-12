FROM tomcat:8.0-alpine
## This works in Local Desktop
ADD ecs-tomcat-webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
