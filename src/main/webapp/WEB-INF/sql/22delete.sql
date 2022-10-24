-- DELETE : 테이블의 레코드 삭제

SELECT * FROM Customers;

DELETE FROM Customers 
WHERE CustomerID = 1;
-- 꼭 확인!!
SELECT * FROM Customers WHERE CustomerID = 1;

DELETE FROM Customers 
WHERE CustomerID = 90;

SELECT * FROM Customers
WHERE CustomerID = 90;

DELETE FROM Customers
WHERE CustomerID = 91;

SELECT * FROM Customers
WHERE CustomerID = 91;

-- USA 고객들 지우기
DELETE FROM Customers
WHERE Country = 'USA';

SELECT * FROM Customers 
WHERE Country = 'USA';

DELETE FROM Customers 
WHERE Country = 'UK';

SELECT * FROM Customers
WHERE Country = 'UK';

DELETE FROM Customers
WHERE Country = 'Mexico';

SELECT * FROM Customers
WHERE Country = 'Mexico';

SELECT * FROM Products;