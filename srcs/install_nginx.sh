# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_nginx.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/20 09:23:21 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 09:41:13 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#instal tools

apt-get update
apt install -y vim wget nginx php7.3-fpm php-mysql unzip

#nginx 
rm -rf /etc/nginx/sites-available/default
cp /default /etc/nginx/sites-available/
echo "daemon off;" >> /etc/nginx/nginx.conf
#service nginx start