FROM php:5.6-apache

ENV POSTLEAF_VERSION 1.0.0-beta7
ENV POSTLEAF_FILE postleaf-$POSTLEAF_VERSION.zip
ENV POSTLEAF_DIR postleaf-$POSTLEAF_VERSION
ENV HTTP_DIR /var/www/html

RUN apt-get update

RUN apt-get install curl -y
RUN apt-get install unzip -y

RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql

RUN rm -f /var/www/html/index.html
RUN curl https://postleaf-downloads.s3.amazonaws.com/postleaf-1.0.0-beta7.zip > $HTTP_DIR/$POSTLEAF_FILE
RUN unzip $HTTP_DIR/$POSTLEAF_FILE -d $HTTP_DIR
RUN mv $HTTP_DIR/$POSTLEAF_DIR/ $HTTP_DIR/postleaf
RUN chown www-data. $HTTP_DIR/postleaf -R

RUN a2enmod rewrite

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]

