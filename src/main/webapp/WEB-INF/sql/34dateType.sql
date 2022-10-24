-- 날짜 시간
 
-- DATE : 날짜
-- DATETIME : 날짜 시간

CREATE TABLE myTable06 (
	col1 DATE,
    col2 DATETIME 
);
INSERT INTO myTable06 (col1,col2)
VALUES('2022-10-21', '2022-10-21 11:03:00');
SELECT * FROM myTable06;

CREATE TABLE myTable07 (
	col1 INT,
    col2 DEC(10, 3),
    col3 VARCHAR(255),
    col4 CHAR(3),
    col5 DATE,
    col6 DATETIME
);

SELECT * FROM myTable07;

DROP TABLE myTable08;
CREATE TABLE myTable08(
	name VARCHAR(255),
    age INT,
    score DEC(10,2),
    address VARCHAR(255),
    birthDate DATE,
    inserted DATETIME
);

SELECT * FROM myTable08;
INSERT INTO myTable08(name)
VALUES('yichi');
SELECT * FROM myTable08;







