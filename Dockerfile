FROM openjdk:8u201-jre-alpine

ENV HAWKBIT_VERSION=0.3.0M4 \
    HAWKBIT_HOME=/opt/hawkbit

EXPOSE 8080

COPY KEY .
