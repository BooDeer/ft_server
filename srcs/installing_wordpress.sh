# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_wordpress.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 08:54:11 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 04:04:42 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cd /var/www/html
wget https://wordpress.org/latest.zip
unzip *.zip
rm *.zip
cd wordpress
cp /wp-config.php .