FROM php:7.0.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
mysql-client libmagickwand-dev --no-install-recommends \
&& pecl install imagick \
&& docker-php-ext-enable imagick \
&& docker-php-ext-install mcrypt pdo_mysql

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
