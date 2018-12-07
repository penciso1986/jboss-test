FROM ubuntu:latest

RUN apt-get update && apt-get upgrade

RUN mkdir /opt/webapps 

COPY ./ /opt/webapps

RUN chmod +x /opt/webapps/jboss-7.1.1/bin/standalone/standalone.sh

CMD ["/opt/jboss-7.1.1/bin/standalone/standalone.sh"]

EXPOSE 8180:8180


