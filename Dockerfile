# Version: 0.0.1
FROM ubuntu:latest
MAINTAINER Heinzlin	"heinzlin66@gmail.com"
ENV REFRESHED_AT 2019-10-14
RUN apt-get -qq update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' > /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx"]
WORKDIR /var/www/html
RUN cp /var/www/html/index.html /var/www/html/index.html.bak
ENV HTML_DIR /var/www/html
ENV NGINX_PORT 80
ADD ./HelloWorld.txt /var/www/html/HelloWorld.txt
COPY ./HelloWorld2.txt /var/www/html/newfolder/HelloWorld2.txt
#ONBUILD ADD ./HelloWorld3.txt /var/www/html/newfolder/HelloWorld3.txt
EXPOSE 80
