CREATE DATABASE mydb4;
USE mydb4;

SELECT * FROM Movie;
SHOW CREATE TABLE Movie;

CREATE TABLE `Movie` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `title` varchar(255) NOT NULL,
   `running` varchar(255) DEFAULT '0',
   `releaseDate` date DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3