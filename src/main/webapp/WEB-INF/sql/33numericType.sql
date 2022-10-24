-- DATA TYPE
-- Numeric
-- INT : 정수 
-- DEC : 소수점 있는 형식ALTER

USE mydb1;
CREATE TABLE myTable03(
	col1 INT(3),
    col2 INT(4),
    col3 INT -- 기본값 -21억 ~ +21억
);
INSERT INTO myTable03 (col1,col2, col3)
VALUES(999, 9999, 210000000 ); -- ok
INSERT INTO myTable03 (col1,col2, col3)
VALUES(9999, 9999, 210000000 ); 
INSERT INTO myTable03 (col1,col2, col3)
VALUES(999, 9999, 4200000000 ); -- xx

SELECT * FROM myTable03;

-- DEC : 소수점 있는 형식 수 저장
CREATE TABLE myTable05 (
	col1 DEC(3,1), -- 총 길이 3, 소수점 아래 1
    col2 DEC(5,2) -- 총 길이 5, 소수점 아래 2
);
INSERT INTO myTable05 (col1,col2)
VALUES(10.5, 200.01);
INSERT INTO myTable05 (col1,col2)
VALUES(100.5, 200.01);
INSERT INTO myTable05 (col1,col2)
VALUES(10.55, 200.01); -- 짤려서 입력됨

-- INT -> java, int, long
-- DEC -> java double, BigDecimal







