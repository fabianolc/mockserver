FROM bellsoft/liberica-openjdk-alpine:17
WORKDIR /tmp
COPY mockserver.jar /tmp/app.jar
EXPOSE 8008
ENTRYPOINT echo "java -jar app.jar -serverPort 8008" & java -jar app.jar -serverPort 8008