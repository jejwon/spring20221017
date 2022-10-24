-- OR : 두 조건 중 하나만 true이면 row 선택됨
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * 
FROM Customers 
WHERE Country = 'Germany' 
OR  Country = 'Mexico';

SELECT * 
FROM Customers
WHERE Country = 'USA'
OR Country = 'UK';

SELECT *
FROM Customers
WHERE City = 'berlin'
OR City = 'london';

SELECT *
FROM Suppliers
WHERE Country = 'USA'
OR Country = 'UK';

SELECT *
FROM Products
WHERE CategoryID = 1
OR CategoryID = 2;
