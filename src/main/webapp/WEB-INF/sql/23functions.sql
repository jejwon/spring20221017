-- 내장함수들 (Aggregate Function 집합 함수)
USE w3schools;

-- MIN : 가장 작은 값
SELECT * FROM Products ORDER BY Price;
SELECT MIN(Price) FROM Products;

-- MAX : 가장 큰 값
SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers; -- 사전 순으로 가장 먼저 나오는 이름
SELECT * FROM Customers ORDER BY CustomerName;
SELECT MAX(CustomerName) FROM Customers;

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- COUNT : 몇 개의 데이터가 있는지 리턴
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers; 
SELECT COUNT(ContactName) FROM Customers;
-- COUNT 함수는 NULL은 생략
INSERT INTO Customers (ContactName, City, Country)
VALUES ('captain', 'ny', 'USA');

SELECT COUNT(Price > 100.00) FROM Products;
SELECT COUNT((BirthDate > '1959.12.31') AND (BirthDate < '1970.01.01')) FROM Employees;

-- AVG : 평균
SELECT * FROM Products;
SELECT AVG(Price) FROM Products;

SELECT * FROM OrderDetails;
SELECT AVG(Quantity) FROM OrderDetails;
-- NULL 데이터 무시
INSERT INTO Products (ProductName) VALUES('kimch');


-- SUM : 합계 /NULL 생략
SELECT * FROM Products;
SELECT SUM(Price) FROM Products;

SELECT SUM(Quantity) FROM OrderDetails;
