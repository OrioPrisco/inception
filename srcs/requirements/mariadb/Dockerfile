FROM alpine:3.19
RUN apk update && apk add mariadb

RUN mkdir /var/lib/mysql/
RUN chown mysql:mysql /var/lib/mysql/
RUN mkdir /run/mysqld
RUN chown mysql:mysql /run/mysqld


RUN mysql_install_db -umysql --ldata=/var/lib/mysql

CMD ["tail", "-f"]

