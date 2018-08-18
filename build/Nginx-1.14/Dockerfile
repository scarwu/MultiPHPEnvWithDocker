FROM alpine:3.8
MAINTAINER Scar Wu <xneriscool@gmail.com>
WORKDIR /build

RUN VERSION="1.14" \
    && NEED_APK="nginx>$VERSION" \
    && apk --update add $NEED_APK

RUN mkdir /volume \
    && mkdir /volume/log \
    && mkdir /volume/data \
    && mkdir /volume/config \

    && mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak \
    && ln -s /volume/config/nginx.conf /etc/nginx/nginx.conf

VOLUME ["/volume/config", "/volume/data", "/volume/log"]

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80/tcp
EXPOSE 443/tcp

CMD /usr/sbin/nginx -g "daemon off;"
