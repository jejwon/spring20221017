-- NOT : false -> true, true -> false

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Germany';
SELECT * FROM Customers WHERE NOT Country = 'Germany';

SELECT * FROM Customers WHERE NOT Country = 'USA';

SELECT * FROM Suppliers WHERE NOT Country = 'USA';

SELECT * FROM Orders WHERE OrderDate < '1997-01-01' OR OrderDate >= '1998-01-01';
 
SELECT * FROM Orders WHERE NOT (OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01');

