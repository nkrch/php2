FROM php:7.4-fpm-alpine

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libpq-dev \
    libxml2-dev \
    libzip-dev \
    pkg-config \
    zip

RUN docker-php-ext-install \
  bcmath \
    intl \
    opcache \
    pdo \
   pdo_pgsql

RUN pecl channel-update pecl.php.net

RUN pecl install xdebug-2.9.8 && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . .

EXPOSE 8000
CMD ["php", "-S", "0.0.0.0:8000"]