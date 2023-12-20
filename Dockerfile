FROM bellsoft/liberica-openjdk-alpine:17
ARG JAR_FILE=mockserver.jar
ARG CONFIG_FILE=mockserverInitialization.json
RUN adduser -D mockserver
USER mockserver
WORKDIR /tmp
COPY ${JAR_FILE} /tmp/app.jar
COPY ${CONFIG_FILE} /tmp/mockserverInitialization.json
EXPOSE 8008
ENTRYPOINT java \
-Dmockserver.initializationJsonPath=mockserverInitialization.json \
-jar app.jar -serverPort 8008
#  echo "java -jar app.jar -serverPort 8008" & java -jar app.jar -serverPort 8008