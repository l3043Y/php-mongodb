FROM bitnami/php-fpm:8.0
RUN apt-get update && apt-get install -y autoconf build-essential
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> /opt/bitnami/php/etc/php.ini