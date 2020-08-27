# ft_server
42 FT Server using Nginx - phpMyAdmin - MySQL - WordPress


# configure PHPMyAdmin
#RUN "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf


## Commands
### Create IMAGE
```bash
docker build -t ft_server:1.0 .
```
### Run Container
```bash
docker run --name ft_nginx -d -p 8080:80  ft_server:1.0
docker ps
docker ps -a
```
