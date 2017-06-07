# https://hub.docker.com/_/nginx/
FROM nginx:alpine

LABEL maintainer "Lesnykh Ilia <lesnykh.ilja@gmail.com>"

RUN mkdir /etc/nginx/logs && touch /etc/nginx/logs/static.log

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /www
