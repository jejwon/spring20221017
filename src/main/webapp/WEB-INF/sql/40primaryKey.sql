-- PRIMARY KEY : NOT NULL, UNIQUE 조합
CREATE TABLE MyTable16(
	col1 INT,
    col2 INT NOT NULL UNIQUE,
    col3 INT PRIMARY KEY
);

DESC MyTable16;

INSERT INTO MyTable16 (col1, col2, col3) VALUES(1,1,1);
SELECT * FROM MyTable15;
INSERT INTO MyTable16 (col1, col2, col3) VALUES(1,1,1); -- xx
INSERT INTO MyTable16 (col1, col2, col3) VALUES(1,2,2); -- ok
INSERT INTO MyTable16 (col1, col2, col3) VALUES(1,2,3); -- xx
INSERT INTO MyTable16 (col1, col3) VALUES(1,3); -- xx