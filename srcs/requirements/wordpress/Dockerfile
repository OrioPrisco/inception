FROM alpine:3.19
RUN apk update && apk add php php-fpm

COPY conf/www.conf /etc/php82/php-fpm.d/
COPY tools/launch.sh /bin/launch.sh

CMD ["sh", "/bin/launch.sh"]
