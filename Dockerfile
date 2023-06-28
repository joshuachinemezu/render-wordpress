FROM wordpress:latest

COPY ./uploads.ini /usr/local/etc/php/conf.d

RUN apt-get update \
    && apt-get install -y magic-wormhole nano \
    && rm -rf /var/lib/apt/lists/*
    
RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
