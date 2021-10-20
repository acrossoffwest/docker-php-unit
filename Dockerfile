FROM acrossoffwest/docker-php-fpm:master

MAINTAINER Yurij Karpov <acrossoffwest@gmail.com>

RUN apk update
RUN apk add unit unit-openrc unit-perl unit-python3 unit-ruby

COPY ./config.json /var/lib/unit/

RUN mkdir /run/unit
RUN touch /run/unit/unit.pid
