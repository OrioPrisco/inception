FROM alpine:3.19
RUN apk update
RUN apk add php php-fpm php-pdo php-mysqli php-session

COPY conf/www.conf /etc/php82/php-fpm.d/
RUN mkdir -p /var/www/adminer
ADD https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php /var/www/adminer/adminer.php
RUN chmod 755 /var/www/adminer/adminer.php

CMD ["php-fpm82", "-F"]
