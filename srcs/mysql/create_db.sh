service mysql start
# Creating DB
echo "CREATE DATABASE db_wordpress;" | mysql -u root
echo "CREATE USER 'admin' identified by 'adminpsw';" | mysql -u root
echo "GRANT USAGE ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root


# Creating Table and Data
# service mysql start
# echo "mysql -u admin -p db_wordpress;" | mysql -u root
# echo "USE db_wordpress;"  | mysql -u admin
# echo "CREATE TABLE students (id MEDIUMINT NOT NULL AUTO_INCREMENT, firstname CHAR(30) NOT NULL, PRIMARY KEY (id) );"  | mysql -u admin
# echo "INSERT INTO students(firstname) VALUES ('Edith'), ('Zakaria');"  | mysql -u admin


mysql --user=admin --password=adminpsw db_wordpress << EOF
CREATE TABLE students (id MEDIUMINT NOT NULL AUTO_INCREMENT, firstname CHAR(30) NOT NULL, PRIMARY KEY (id) );
INSERT INTO students (firstname) VALUES ("Edith");
INSERT INTO students (firstname) VALUES ("Zakaria");
INSERT INTO students (firstname) VALUES ("Juanito");
INSERT INTO students (firstname) VALUES ("Elian");
EOF