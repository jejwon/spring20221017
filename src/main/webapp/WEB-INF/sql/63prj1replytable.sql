USE prj1;

-- 댓글 테이블 만들기
CREATE TABLE Reply (
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
    content VARCHAR(1000) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
	FOREIGN KEY (boardId) REFERENCES Board(id)
);

DESC Reply;
SELECT * FROM Board ORDER BY 1 DESC;

-- 댓글 수가 결과로 같이 나오는 BoardTable 쿼리
SELECT 
	b.id, 
	b.title,
    b.writer, 
    b.inserted,
    COUNT(r.id) countReply
FROM Board b
LEFT JOIN Reply r ON r.boardId = b.id 
ORDER BY id DESC; -- 댓글 없는 것도 있어서 left join

SELECT * FROM Reply;
SELECT COUNT(*) FROM Reply;
  
 -- 댓글 입력 시간 변경
SELECT * FROM Reply WHERE boardId = 1019 ORDER BY id DESC;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 6 DAY) WHERE id = 60;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 15 DAY) WHERE id = 59;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 60 DAY) WHERE id = 58;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 400 DAY) WHERE id = 57;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 600 DAY) WHERE id < 57;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 800 DAY) WHERE id < 57;
 
  
-- 파일 테이블 만들기
CREATE TABLE File(
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
    name VARCHAR(512) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

SELECT * FROM File ORDER BY 1 DESC;




