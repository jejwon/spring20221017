-- database 선택
USE w3schools;
-- SCHEMAS 더블클릭
SELECT * FROM Customers;
SELECT * 
FROM Customers 
WHERE Country = 'Germany';

-- AND
SELECT *
FROM Customers
WHERE Country = 'Germany'
	AND City = 'Berlin';
    
SELECT * 
FROM Customers
WHERE CustomerName >= 'A'
	AND CustomerName < 'B';
    
SELECT *
FROM Customers
WHERE CustomerName >= 'C'
	AND CustomerName < 'D';
    
SELECT * 
FROM Customers
WHERE ContactName >= 'E'
	AND ContactName < 'F';

SELECT * 
FROM Products
WHERE (Price >= 10.00)
	AND (Price < 20.00);
    
SELECT * 
FROM Employees
WHERE (BirthDate > '1949-12-31')
	AND (BirthDate < '1960-01-01');