# Dockerfile
FROM php:8.2-fpm

# Instalar pacotes adicionais
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip

# Instale o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
