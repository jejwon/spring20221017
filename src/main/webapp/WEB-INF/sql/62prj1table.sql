CREATE DATABASE prj1;
USE prj1;
CREATE TABLE Board (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    content VARCHAR(1000) NOT NULL
);

SELECT * FROM Board ORDER BY 1 DESC;
DESC Board;

ALTER TABLE Board
ADD COLUMN writer VARCHAR(255) NOT NULL; -- null xx -> "" oo

-- 작성일시 칼럼 추가 /default 값이 있어서 mapper수정 안해도됨
ALTER TABLE Board
ADD COLUMN inserted DATETIME NOT NULL DEFAULT NOW(); 