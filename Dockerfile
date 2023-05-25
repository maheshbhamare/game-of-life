FROM tomcat:9
RUN mkdir /webapps
ARG JAR_FILE=/root/.jenkins/workspace/demo-job/gameoflife-web/target/gameoflife.war
COPY ${JAR_FILE} /webapps
