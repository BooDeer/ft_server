service nginx restart
service php7.3-fpm restart
chown -R mysql:mysql /var/lib/mysql
service mysql restart