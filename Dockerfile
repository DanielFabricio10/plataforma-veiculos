# Dockerfile
FROM php:8.2-fpm

# Instalar pacotes adicionais
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    libpq-dev  # Dependência para o driver PostgreSQL

# Instalar extensões PHP necessárias
RUN docker-php-ext-install pdo pdo_pgsql  # Instala os drivers PDO para PostgreSQL

# Instale o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
