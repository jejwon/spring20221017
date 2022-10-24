-- DROP COLUMN : 컬럼 삭제
-- 삭제 전 백업 꼭!!! 하기
DESC MyTable17;
ALTER TABLE MyTable17
DROP COLUMN col7;

USE mydb1;
ALTER Table MyTable17 DROP COLUMN col2;

SELECT * FROM MyTable17;

