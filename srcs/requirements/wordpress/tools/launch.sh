#!/usr/bin/env sh


if find /mnt/app -mindepth 1 -maxdepth 1 | read; then
	echo "Site already exists"
else
	echo "Creating website"


	cd /mnt/app/
	wget https://wordpress.org/latest.zip
	unzip latest.zip
	mv wordpress/* .
	rmdir wordpress
	sed "s/username_here/$MYSQL_USER/;s/password_here/$MYSQL_PASSWORD/;s/REDIS_PASSWORD/$REDIS_PASSWORD/;" /etc/wp-config-sample.php > wp-config.php

	sleep 10 #Make sure the databaseis launched, otherwise the following will not work

	wp plugin install wp-redis
	wp plugin activate wp-redis
	wp redis enable
fi

exec php-fpm82 -F
