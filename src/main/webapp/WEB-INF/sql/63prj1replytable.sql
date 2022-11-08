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
ORDER BY id DESC;

SELECT * FROM Reply;
SELECT COUNT(*) FROM Reply;
        




