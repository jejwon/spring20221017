-- not equals : <>, != 같지 않다
SELECT * FROM Customers WHERE Country <> 'Mexico';
SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Mexico';

SELECT * FROM Suppliers WHERE Country <> 'Japan';
SELECT COUNT(*) FROM Suppliers WHERE Country <> 'Japan';

SELECT * FROM Employees WHERE EmployeeID <> 1;
