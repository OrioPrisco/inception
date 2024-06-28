#!/usr/bin/env sh


if find /mnt/app -mindepth1 -maxdepth1 | read; then
	echo "Site already exists"
else
	echo "Creating website"


	cd /mnt/app/
	wget https://wordpress.org/latest.zip
	unzip latest.zip
	mv wordpress/* .
	rmdir wordpress
	sed "s/username_here/$MYSQL_USER/;s/password_here/$MYSQL_PASSWORD/" /etc/wp-config-sample.php > wp-config.php
fi

exec php-fpm82 -F
