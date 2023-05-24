FROM tomcat:9
//RUN mkdir -p /gameoflife/
//ARG JAR_FILE=target/gameoflife.war
//COPY ${JAR_FILE} /gameoflife/gameoflife.war
WORKDIR /webapps/
COPY /root/.jenkins/workspace/demo-job/gameoflife-web/target/gameoflife.war .
//COPY src/main/resources/application-local.yml /gameoflife/config/
//COPY src/main/resources/log4j2.xml /gameoflife/log4j2/
# Create a user group 'otheruser'
//RUN addgroup -S epb && adduser -S -D -h /gameoflife/ gameoflife gameoflife && chown -R gameoflife:gameoflife /gameoflife/

//USER gameoflife
//EXPOSE 7060
//ENTRYPOINT ["sh", "-c", "java -Xms512m -Xmx1g -XX:+UseStringDeduplication -war -Dspring.profiles.active=${SPRING_ACTIVE_PROFILE} -Dlog4j2.configurationFile=/gameoflife/log4j2/log4j2.xml ${VM_ARGS} /gameoflife/gameoflife.war"]
