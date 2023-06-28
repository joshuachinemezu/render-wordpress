# You can change this to a different version of Wordpress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:6.2.2-apache

RUN apt-get update && apt-get install -y magic-wormhole nano sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
