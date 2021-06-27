mariadb -e "CREATE DATABASE wordpress;"
mariadb -e "CREATE USER 'pgomeza'@'localhost' IDENTIFIED BY 'root';"
mariadb -e "GRANT ALL ON wordpress.* TO 'pgomeza'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;"
mariadb -e "FLUSH PRIVILEGES"
