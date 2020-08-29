service mysql start
# Creating DB
echo "CREATE DATABASE db_wordpress;" | mysql -u root
echo "CREATE USER 'admin' identified by 'adminpsw';" | mysql -u root
echo "GRANT USAGE ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root


# Creating Table and Data
echo "USE db_wordpress;"
echo "CREATE TABLE students (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);"
echo "INSERT INTO students(name) VALUES ('Edith'), ('Zakaria');"