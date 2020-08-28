FROM debian:buster


RUN apt-get update -y	 &&\
		apt-get install wget vim -y	 &&\
		apt-get install supervisor -y	 &&\
		apt-get install nginx -y	 &&\
		apt-get install default-mysql-server -y	 &&\
		apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#php on nginx
COPY ./srcs/config/supervisord.conf	/etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/nginx/default /etc/nginx/sites-available/default
RUN rm /var/www/html/*
COPY ./index.php /var/www/html/

# mysql on php
COPY ./srcs/mysql/db_create_new_user.sql /etc/mysql/
RUN mysql -u root < /etc/mysql/db_create_new_user.sql

#COPY ./srcs/website/* /var/www/html/

#COPY ./srcs/phpMyAdmin /var/www/html/phpMyAdmin

CMD ["/usr/bin/supervisord"]



