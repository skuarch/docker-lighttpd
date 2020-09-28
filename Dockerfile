FROM ubuntu:20.04

RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get -y -f install lighttpd && \
  chmod -R 777 /var/www && \
  service lighttpd start

EXPOSE 80
VOLUME /var/www
CMD ["service", "lighttpd", "start"]

