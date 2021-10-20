FROM acrossoffwest/docker-php-fpm:7.4.24

MAINTAINER Yurij Karpov <acrossoffwest@gmail.com>

RUN apk update
RUN apk add unit unit-openrc unit-perl unit-php7 unit-python3 unit-ruby php7-json php7-session php7-session
RUN apk add php7-json php7-session php7-session php7-pdo php7-pdo_pgsql php7-pgsql php7-pdo_mysql php7-mysqli php7-zip php7-opcache php7-xmlreader php7-redis php7-tokenizer

COPY ./config.json /var/lib/unit/conf.json

RUN install-php-extensions json
