-- table명, 컬럼명 작성 관습
-- 회사의 규칙 따르기

-- 대소문자 구분 안함
-- snake_lower_case
-- your_car_name

-- 강의에서는 
-- 컬럼명: lowerCamelCase
-- 테이블명: UpperCamelCase
CREATE TABLE myTable09(
	yourCarName VARCHAR(255)
);
INSERT INTO myTable09 (yourCarName)
VALUES ('tesla');
INSERT INTO myTable09 (yourcarname)
VALUES ('kia');

SELECT * FROM myTable09;
-- SELECT * FROM mytable09; 





