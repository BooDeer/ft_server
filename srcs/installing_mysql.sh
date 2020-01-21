# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_mysql.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 20:09:34 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 12:16:19 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


#install mysql
apt install -y gnupg
apt install -y lsb-release
export DEBIAN_FRONTEND=noninteractive
echo 'mysql-apt-config mysql-apt-config/select-server select mysql-5.7' | debconf-set-selections
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt update
apt install -y mysql-server
chown -R mysql: /var/lib/mysql
service mysql start

#create user and database

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'boodeer'@'localhost' IDENTIFIED BY 'boodeer';"
mysql -u root -e "CREATE DATABASE wordpress;";
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'boodeer'@'localhost';";
mysql -u root -e "FLUSH PRIVILEGES;";
chown -R mysql: /var/lib/mysql

mysql -u root wordpress < local.sql