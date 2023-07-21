FROM adoptopenjdk/openjdk8:jre8u282-b08-alpine

ENV HAWKBIT_HOME=/opt/hawkbit

EXPOSE 8080

COPY hawkbit-update-server.jar $HAWKBIT_HOME/

VOLUME "$HAWKBIT_HOME/data"

WORKDIR $HAWKBIT_HOME

ENTRYPOINT ["java","-jar","hawkbit-update-server.jar","-Xms768m -Xmx768m -XX:MaxMetaspaceSize=250m -XX:MetaspaceSize=250m -Xss300K -XX:+UseG1GC -XX:+UseStringDeduplication -XX:+UseCompressedOops -XX:+HeapDumpOnOutOfMemoryError"]
