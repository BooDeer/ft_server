# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/06 19:07:55 by hboudhir          #+#    #+#              #
#    Updated: 2020/01/24 11:22:15 by hboudhir         ###   ########.fr        #
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
