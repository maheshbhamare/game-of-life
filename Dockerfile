FROM tomcat:9
WORKDIR /webapps/
COPY /root/.jenkins/workspace/demo-job/gameoflife-web/target/gameoflife.war .
