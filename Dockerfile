FROM debian:buster


RUN apt-get update -y \
    && apt-get install wget vim -y \
    && apt-get install nginx -y \
    && apt-get install mysql-server -y    \
    && apt-get install php-fpm php-cli php-mbstring php-mysql -y \
    && apt-get install phpmyadmin -y \
    && apt-get clean

RUN apt-get -y install default-mysql-server


EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]

CMD service nginx start

#   apt-get install mysql-server -y    \
#   apt-get install php-fpm php-cli php-mbstring php-mysql -y \
#              apt-get install phpmyadmin -y \
#             apt-get clean

# configure PHPMyAdmin
#RUN "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# 1. Lets start nginx
# 2. 

# Commands
# To create IMAGE
# docker build -t ft_server:1.0 .

# docker images

# Run the container
# docker run -d -p 8080:8080  5761e8037c11

# docker ps
# docker ps -a
#docker run -it -p 8080:80 5761e8037c11 bin/bash

