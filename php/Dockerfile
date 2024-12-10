FROM php:8.2-fpm
WORKDIR /var/www/html

RUN apt-get update && apt install nodejs npm -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH="$PATH:/usr/local/bin"

RUN composer install
RUN npm run build
RUN php artisan key:generate
RUN php artisan migrate:fresh --seed