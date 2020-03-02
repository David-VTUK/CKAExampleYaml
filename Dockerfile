FROM ubuntu:latest

LABEL maintainer="someone@someorg.com"

RUN \
        apt-get update && \
        apt-get -y upgrade && \
        apt-get install -y apache2

COPY /home/user/src/* /var/www/html

WORKDIR /root

CMD ["usr/sbin/apache2ctl", "-D", "FOREGROUND"]
