-- 여러행 한번에 수정
-- 수정 전 꼭 확인하기
-- where 넣기!(모든 레코드가 변경됨)
UPDATE Customers
SET PostalCode = '0000'
WHERE Country = 'Mexico';

SELECT * FROM Customers
WHERE Country = 'Mexico';

-- DESC : 테이블 구조
DESC Customers;

-- SAFE UPDATE MODE -> disable
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Customers
WHERE Country = 'USA';

UPDATE Customers
SET City = 'New York'
WHERE Country = 'USA';

SELECT * FROM Customers 
WHERE Country = 'UK';

UPDATE Customers 
SET Address = 'GangNam'
WHERE Country = 'UK';

SELECT * FROM Customers;