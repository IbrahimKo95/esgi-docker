FROM php:8.1-fpm
WORKDIR /var/www/html

RUN apt-get update && apt install nodejs npm zip unzip -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH="$PATH:/usr/local/bin"


#RUN chmod +x /entrypoint.sh
#COPY entrypoint.sh /entrypoint.sh
#CMD ["/entrypoint.sh"]