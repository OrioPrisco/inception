#!/usr/bin/env sh


if find /mnt/app -mindepth1 -maxdepth1 | read; then
	echo "Site already exists"
else
	echo "Creating website"
	echo "test" > /mnt/app/index.php
fi

exec php-fpm82 -F
