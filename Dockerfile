FROM debian:buster


RUN apt-get update -y	 &&\
		apt-get install wget vim -y	 &&\
		apt-get install supervisor -y	 &&\
		apt-get install nginx -y	 &&\
		apt-get install default-mysql-server -y	 &&\
		apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./srcs/config/supervisord.conf	/etc/supervisor/conf.d/supervisord.conf

COPY ./srcs/nginx/default /etc/nginx/sites-available/default

COPY ./srcs/index.php /var/www/html/index.php

#COPY ./srcs/website/ /var/www/html

CMD ["/usr/bin/supervisord"]



