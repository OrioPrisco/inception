#!/usr/bin/env sh


if find /var/lib/mysql -mindepth 1 -maxdepth 1 | read; then
	echo "db exists"
else
	echo "need to create db"
	chown mysql:mysql /var/lib/mysql
	mysql_install_db -umysql --ldata=/var/lib/mysql
	echo "installed db"
	mariadbd -umysql &
	pid=$!
	sleep 1

	echo "CREATE DATABASE wordpress;" | mysql
	if [ $? -ne 0 ]; then
		exit 1
	fi

	kill -9 $pid

	echo "created db"
fi

exec mariadbd -umysql
