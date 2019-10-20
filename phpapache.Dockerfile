FROM php:7.2-apache

RUN apt-get update
RUN apt-get install -y libmcrypt-dev
RUN docker-php-ext-install bcmath
RUN curl --silent --show-error https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN apt-get update && apt-get install -y --force-yes zlib1g-dev
RUN docker-php-ext-install zip pdo_mysql