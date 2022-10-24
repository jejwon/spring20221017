-- MODIFY COLUMN : 컬럼 수정
-- 변경하는 데이터의 타입, 제약사항을 
-- 이미 존재하는 데이터가 위반하고 있지 않는 지 먼저 확인
DESC MyTable17;
ALTER TABLE MyTable17
MODIFY COLUMN col1 INT NOT NULL;

SELECT * FROM MyTable17;

INSERT INTO MyTable17 (col1, col6, col3, col4)
VALUES (1, 6, 3, 4);

ALTER TABLE MyTable17 
MODIFY COLUMN col6 INT NOT NULL;

ALTER TABLE MyTable17
MODIFY COLUMN col3 VARCHAR(255) UNIQUE;

