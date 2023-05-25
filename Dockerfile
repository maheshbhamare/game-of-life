FROM tomcat:9
RUN mkdir /webapps
COPY /gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
