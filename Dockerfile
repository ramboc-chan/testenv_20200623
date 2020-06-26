FROM ubuntu:bionic

RUN apt-get update -y >> /tmp/history.log 
RUN apt-get -y install nginx  >> /tmp/history.log

RUN /etc/init.d/nginx restart >> /tmp/history.log

RUN echo " hello world " > /var/www/html/index.html
