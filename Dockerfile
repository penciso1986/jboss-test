FROM debian:latest

RUN apt-get update && apt-get upgrade

RUN apt-get install openjdk-8-jre-headless net-tools procps -y

RUN mkdir /opt/jboss-7.1.1

COPY ./jboss-7.1.1/ /opt/jboss-7.1.1/

#RUN chmod +x /opt/jboss-7.1.1/bin/standalone/standalone.sh

#CMD ["/opt/jboss-7.1.1/bin/standalone/standalone.sh"]


