/* This part is equivalent of mysql_secure_installation */
UPDATE mysql.user SET Password=PASSWORD('TakaGokuCorn18') WHERE User='root';
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

/* make acds db */
CREATE DATABASE acds;
CREATE USER 'acds'@'localhost' IDENTIFIED BY 'acdspass';
GRANT ALL PRIVILEGES ON acds.* TO 'acds'@'localhost';

FLUSH PRIVILEGES;

