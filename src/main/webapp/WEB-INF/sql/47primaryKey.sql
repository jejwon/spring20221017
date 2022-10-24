CREATE DATABASE mydb2;
USE mydb2;
-- 학생 Table
-- (id), 이름, 나이, 성별

CREATE TABLE Student (
	id INT PRIMARY KEY AUTO_INCREMENT, -- UNIQUE NOT NULL, -- primary key
	name VARCHAR(255),
	age INT,
	gender VARCHAR(255)
);

INSERT INTO Student (id, name, age, gender)
VALUES (1, 'kim', 30, 'F');

INSERT INTO Student (id, name, age, gender)
VALUES (2, 'lee', 40, 'M');

INSERT INTO Student ( name, age, gender)
VALUES ('choi', 30, 'M');

DELETE FROM Student WHERE id = 2;
DELETE FROM Student WHERE id = 3;

INSERT INTO Student ( name, age, gender)
VALUES ('park', 20, 'M'); -- auto increment로 4번으로 들어감