#!/bin/bash
set -e

mkdir -p /var/www/html/www/admin/plugins
mkdir -p /var/www/html/var/templates_compiled
chown -R www-data:www-data .
chmod -R a+w /var/www/html/plugins
chmod -R a+w /var/www/html/www/admin/plugins
chmod -R a+w /var/www/html/var/templates_compiled

/etc/init.d/php5-fpm start
nginx -g 'daemon off;'
