
FROM php:5.6.40-apache

MAINTAINER Fernando Pucci

COPY . /var/www/html 

# APACHE SERVER CONFIGURATIONS
COPY ./apacheConfigs/docker-php.conf /etc/apache2/conf-enabled/docker-php.conf

# PHP CONFIGURATIONS
COPY ./apacheConfigs/php.ini /usr/local/etc/php/php.ini

# RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mysql

# INSTALL INTL
RUN apt-get -y update \
&& apt-get install -y libicu-dev\
&& docker-php-ext-configure intl \
&& docker-php-ext-install intl

RUN  a2enmod rewrite &&  service apache2 restart

# CREATE NETWORK
# docker network create -d bridge [nome da rede]

# COMPOSE SAMPLE
# https://gist.github.com/jcavat/2ed51c6371b9b488d6a940ba1049189b