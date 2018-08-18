FROM alpine:3.8
MAINTAINER Scar Wu <xneriscool@gmail.com>
WORKDIR /build

RUN VERSION="5.6" \
    && NEED_APK="php5>$VERSION php5-fpm>$VERSION" \
    && apk --update add $NEED_APK

ENV PHP_DIR /etc/php5

RUN mkdir /volume \
    && mkdir /volume/log \
    && mkdir /volume/data \
    && mkdir /volume/config \

    && mv $PHP_DIR/php.ini $PHP_DIR/php.ini.bak \
    && ln -s /volume/config/php.ini $PHP_DIR/php.ini \

    && mv $PHP_DIR/php-fpm.conf $PHP_DIR/php-fpm.conf.bak \
    && ln -s /volume/config/php-fpm.conf $PHP_DIR/php-fpm.conf

VOLUME ["/volume/config", "/volume/data", "/volume/log"]

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

RUN addgroup nginx \
    && adduser -D nginx -G nginx

EXPOSE 9000/tcp

CMD /usr/bin/php-fpm5 --nodaemonize
