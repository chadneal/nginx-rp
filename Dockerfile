FROM ubuntu:14.10

MAINTAINER chad.neal@jeppesen.com

RUN apt-get update
RUN apt-get -y install supervisor nginx

RUN mkdir -p /var/log/supervisor

ADD nginx.conf /etc/nginx/nginx.conf
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080

CMD ["/usr/bin/supervisord"]


