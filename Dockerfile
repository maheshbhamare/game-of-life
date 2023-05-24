FROM tomcat:9
COPY /root/.jenkins/workspace/demo-job/gameoflife-web/target/gameoflife.war /webapps
