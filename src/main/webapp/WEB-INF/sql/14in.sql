-- IN : 나열된 값 중에 하나라도 일치하면 

SELECT * FROM Customers;
SELECT * 
FROM Customers 
WHERE Country = 'Mexico' 
	OR Country = 'Germany';
    
-- IN
SELECT * 
FROM Customers 
WHERE Country IN ('Germany', 'Mexico');

SELECT * FROM Customers WHERE City IN('Madrid', 'München', 'London');
SELECT * FROM Suppliers WHERE Country IN('UK', 'USA', 'JAPAN');
SELECT * FROM Products WHERE CategoryID IN(1, 2, 3);
SELECT * FROM Orders WHERE OrderDate IN('1996-07-08', '1996-07-19');