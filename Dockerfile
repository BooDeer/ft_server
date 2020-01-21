# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/06 19:07:55 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/20 09:35:25 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
EXPOSE 80 443
# WORKDIR /tmp
COPY srcs /

RUN sh -c "./install_nginx.sh"
RUN sh -c "./installing_phpmyadmin.sh"
RUN sh -c "./installing_mysql.sh"
RUN sh -c "./installing_wordpress.sh"
RUN sh -c "./install_sup.sh"
CMD bash starting_serv.sh
#CMD tail -f /dev/null
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
