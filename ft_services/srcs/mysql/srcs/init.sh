#  busybox-extras telnet localhost 3306
# mysql_install_db initializes the MariaDB data directory and creates the system tables in the mysql database, if they do not exist.
# https://mariadb.com/kb/en/mysql_install_db/
# dev/null is a special file that acts as a black hole
# Together they mean "throw away any error messages"
mysql_install_db --user=root --datadir=/var/lib/mysql > /dev/null
openrc
touch /run/openrc/softlevel
/etc/init.d/mariadb setup;
service mariadb start;
# Create Database in MySQL
#mysql -u root -e "CREATE DATABASE wp_db"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress"
mysql -u root -e "CREATE USER IF NOT EXISTS 'evila'@'%' IDENTIFIED BY 'evila'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'evila'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;";


# /etc/init.d/mariadb setup;
# Export MySQL Database
# mysql -uUSERNAME -p DB_NAME < import_file.sql
#mysql -u root  wp_db < wp_db.sql
#mysql -u root -e "CREATE DATABASE phpmyadmin"
#mysql -u root phpmyadmin < phpmyadmin.sql
#telegraf --config /etc/telegraf/telegraf.conf &
mysql wordpress -u root < wordpress.sql

tail -f /dev/null # Freeze command to avoid end of container

## Setup MySQL
#/usr/bin/mysql_install_db --datadir=/var/lib/mysql
#
## Start MySQL in background
#/usr/bin/mysqld --user=root --init_file=/init_file & sleep 3
#
#
#/usr/bin/mysqld_safe --datadir='/var/lib/mysql'
#
## Initialize database
#mysql wordpress -u root < wordpress.sql
#
#pkill mysqldb
#
## Keep container running
##exec /usr/bin/mysqld
