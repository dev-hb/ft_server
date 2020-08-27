FROM debian:buster


RUN apt-get update -y	\
			&& apt-get install wget vim -y	\
			&& apt-get install nginx -y	\
			&& apt-get install default-mysql-server -y	\
			&& apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]



