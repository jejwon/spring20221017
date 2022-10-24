-- NOT NULL : NULL이면 안 됨 
CREATE TABLE MyTable10(
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

DESC MyTable10;
INSERT INTO MyTable10(col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable10(col2) VALUES ('c');
INSERT INTO MyTable10(col1) VALUES ('d');


SELECT * FROM MyTable10;

CREATE TABLE MyTable11(
	col1 INT,
    col2 INT NOT NULL
);

INSERT INTO MyTable11(col1, col2) VALUES (2, 3);
INSERT INTO MyTable11(col2) VALUES (4);
INSERT INTO MyTable11(col1) VALUES (5);


