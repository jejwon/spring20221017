SELECT * FROM Customers ORDER BY CustomerID;

-- 한 페이지당 10명 고객
-- 1페이지 LIMIT(10 * (1-1)), 10
-- 1페이지 LIMIT(10 * (2-1)), 10
-- 1페이지 LIMIT(10 * (3-1)), 10
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 10;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 10, 10;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 20, 10;

-- 원래코드 복사
INSERT INTO
Customers (CustomerName, Address, City, PostalCode, Country)
SELECT CustomerName, Address, City, PostalCode, Country
FROM Customers; 

SELECT * FROM Orders;
