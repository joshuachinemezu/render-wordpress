FROM wordpress:6.2.2-apache

COPY ./uploads.ini /usr/local/etc/php/conf.d

RUN apt-get update \
    && apt-get install -y magic-wormhole nano

RUN docker-php-ext-install pdo pdo_mysql

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
