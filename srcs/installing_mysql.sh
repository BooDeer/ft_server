# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_mysql.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 20:09:34 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 04:51:19 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#nginx 
rm -rf /etc/nginx/sites-available/default
cp /default /etc/nginx/sites-available/
service nginx start

#install mysql
apt install -y gnupg
apt install -y lsb-release
export DEBIAN_FRONTEND=noninteractive
echo 'mysql-apt-config mysql-apt-config/select-server select mysql-5.7' | debconf-set-selections
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt update
apt install -y mysql-server
chown -R mysql:mysql /var/lib/mysql
service mysql start

#create user and database

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'boodeer'@'localhost' IDENTIFIED BY 'boodeer';"
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "FLUSH PRIVILEGES;";

mysql -u root wordpress < localhost.sql