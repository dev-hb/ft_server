CREATE DATABASE db_ft_server;
USE db_ft_server
CREATE TABLE students (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);
INSERT INTO students(name) VALUES ('Edith'), ('Zakaria');
exit