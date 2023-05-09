FROM ubuntu:latest
MAINTAINER Wilson
RUN apt update
RUN apt install apache2 wget unzip -y
ADD waso.tar.gz /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
WORKDIR /var/www/html
