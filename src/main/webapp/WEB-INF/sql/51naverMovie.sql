CREATE DATABASE mydb3;
USE mydb3;
-- '네이버 영화 상영작' 페이지 관련 테이블
DROP TABLE Movie;

CREATE TABLE Movie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    running VARCHAR(255) DEFAULT 0,
    releaseDay DATE
);

CREATE TABLE Director (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL
);
CREATE TABLE MovieDirector (
	movieId INT NOT NULL,
    directorId INT NOT NULL,
	FOREIGN KEY (movieId) REFERENCES Movie(id),
	FOREIGN KEY (directorId) REFERENCES Director(id),
    PRIMARY KEY(movieId, directorId)
);

CREATE TABLE Genre (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);
CREATE TABLE MovieGenre (
	movieId INT NOT NULL,
    genreId INT NOT NULL,
	FOREIGN KEY (movieId) REFERENCES Movie(id),
	FOREIGN KEY (genreId) REFERENCES Genre(id),
    PRIMARY KEY(movieId, genreId)
);

CREATE TABLE Actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);
CREATE TABLE MovieActor (
	movieId INT,
    actorId INT,
	FOREIGN KEY (movieId) REFERENCES Movie(id),
	FOREIGN KEY (actorId) REFERENCES Actor(id)
);
