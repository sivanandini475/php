FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER nandini
RUN apt-get update && apt-get install apache2 php git -y
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/sivanandini475/dev.git /var/www/html
VOLUME ["/data"]
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
