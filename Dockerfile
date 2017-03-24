FROM jenkinsci/slave:alpine
MAINTAINER Julien Maitrehenry <julien.maitrehenry@me.com>
USER root

RUN apk add --update --no-cache docker curl
COPY jenkins-slave /usr/local/bin/jenkins-slave
VOLUME /var/run/docker.sock

USER jenkins
ENTRYPOINT ["jenkins-slave"]

