FROM wordpress:latest

RUN apt-get update \
    && apt-get install -y sudo nano \
    && rm -rf /var/lib/apt/lists/*

RUN echo "www-data ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
