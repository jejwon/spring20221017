-- 10/31
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


-- 11/1
-- 여러 게시물 추가하기 2배씩 늘어남
INSERT INTO Board(title, content, writer)
SELECT title, content, writer FROM Board;

-- page 처리 쿼리
SELECT * 
FROM Board
LIMIT ?, ?; -- ?1: 어디서부터(0-base),
            -- ?2: 몇 개
            
-- 검색 쿼리
SELECT * 
FROM Board
WHERE title LIKE '%keyword%'
	OR content LIKE '%keyword%'
    OR writer LIKE '%keyword%' ;





