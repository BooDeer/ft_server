# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/06 19:07:55 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 04:32:09 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
EXPOSE 80 443
# WORKDIR /tmp
COPY srcs /
RUN apt update -y && apt upgrade -y
RUN apt install -y vim wget nginx php7.3-fpm php-mysql unzip
# php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
#COPY srcs/mysql-apt-config_0.8.14-1_all.deb ./
#COPY srcs/installing_mysql.sh ./
RUN sh -c "./installing_mysql.sh"
RUN sh -c "./installing_phpmyadmin.sh"
RUN sh -c "./installing_wordpress.sh"
RUN sh -c "./starting_serv.sh"
CMD ["nginx", "-g", "daemon off;"]
CMD tail -f /dev/null
# ADD srcs/phpMyAdmin-5.0.1-all-languages ./
# COPY srcs/installing_phpmyadmin.sh ./





# RUN apt -y install default-mysql-server
# RUN apt -y install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
# RUN apt -y install wget
# RUN wget https://wordpress.org/latest.tar.gz -P /tmp && mkdir /var/www/html/test
# RUN tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/test
# RUN apt -y install curl
# RUN curl -s https://api.wordpress.org/secret-key/1.1/salt/
# RUN chown -R www-data:www-data /var/www/html/test
