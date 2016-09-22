FROM php:5.6-apache

ENV PL_VERSION 1.0.0-beta7
ENV PL_FILE postleaf-$PL_VERSION.zip
ENV PL_VS_DIR postleaf-$PL_VERSION
ENV HTTP_DIR /var/www/html
ENV PL_DIR $HTTP_DIR/postleaf
ENV PL_DB_FILE $PL_DIR/database.php

RUN apt-get update && \
    apt-get -y install curl && \
    apt-get -y install unzip && \
    apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install gd && \
    docker-php-ext-install pdo_mysql && \
    rm -f $HTTP_DIR/index.html && \
    curl https://postleaf-downloads.s3.amazonaws.com/postleaf-1.0.0-beta7.zip > $HTTP_DIR/$PL_FILE && \
    unzip $HTTP_DIR/$PL_FILE -d $HTTP_DIR && \
    mv $HTTP_DIR/$PL_VS_DIR/ $PL_DIR && \
    chown www-data. $PL_DIR -R && \
    a2enmod rewrite && \
    apt-get -y install mysql-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean curl && unzip && \
    apt-get clean libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev

COPY .htaccess $PL_DIR
COPY database.php $PL_DIR
COPY docker-entrypoint.sh /
COPY postleaf.sql $PL_DIR

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]
