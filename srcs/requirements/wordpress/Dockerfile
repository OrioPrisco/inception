FROM alpine:3.19
RUN apk update
RUN apk add php php-fpm php-pdo php-mysqli

COPY conf/www.conf /etc/php82/php-fpm.d/
COPY conf/wp-config-sample.php /etc/wp-config-sample.php
COPY tools/launch.sh /bin/launch.sh

CMD ["sh", "/bin/launch.sh"]
