FROM alpine:3.19
RUN apk update && apk add mariadb mariadb-client

RUN mkdir /var/lib/mysql/
RUN chown mysql:mysql /var/lib/mysql/
RUN mkdir /run/mysqld
RUN chown mysql:mysql /run/mysqld

COPY conf/mariadb-server.cnf /etc/my.cnf.d/
COPY tools/launch.sh /bin/launch.sh

CMD ["sh", "/bin/launch.sh"]

