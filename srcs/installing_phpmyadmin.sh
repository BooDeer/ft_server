# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_phpmyadmin.sh                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 09:08:36 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 09:51:23 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#apt update
#
#service php7.3-fpm start
cd /var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
unzip *.zip
rm *.zip
mv phpMyAdmin-5.0.1-all-languages phpmyadmin
#fix errors
mkdir /var/www/html/phpmyadmin/tmp
chmod 777 /var/www/html/phpmyadmin/tmp

apt install -y php-json php-mbstring
#service php7.3-fpm reload

cp /config.inc.php /var/www/html/phpmyadmin/
rm /var/www/html/phpmyadmin/config.sample.inc.php

service php7.3-fpm start