# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installing_phpmyadmin.sh                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 09:08:36 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/19 09:11:01 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apt update
apt install -y php7.3 php7.3-cli php7.3-common php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml php-mbstring php-zip php-gd php7.3-fpm
cp ./default /etc/nginx/sites-available/default
cp -r phpmyadmin /var/www/html/phpmyadmin