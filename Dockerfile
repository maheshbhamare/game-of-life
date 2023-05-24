FROM tomcat:9
ARG JAR_FILE=target/gameoflife.war
COPY ${JAR_FILE} /webapps
