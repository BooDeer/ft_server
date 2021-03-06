# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_wordpress.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 08:54:11 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 12:11:52 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cd /var/www/html
wget https://wordpress.org/latest.zip
unzip *.zip
rm *.zip
mv /var/www/html/wordpress/* /var/www/html/
rm -rf /var/www/html/wordpress/
rm -rf /var/www/html/wp-config-sample.php
cp /wp-config.php /var/www/html/