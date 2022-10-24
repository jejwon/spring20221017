-- UPDATE : 레코드(row)의 필드(column)을 수정
UPDATE Customers
SET ContactName = 'Alfred Schmit'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Maria Schmit', 
	City = 'Frankfurt'
WHERE CustomerId = 1;

SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = 'Dehan', 
	ContactName = 'deff', 
    Address = 'st.34', 
    City = 'Port', 
    PostalCode = '1234', 
    Country = 'Portugal'
 WHERE CustomerId = 92;

UPDATE Customers
SET CustomerName = 'Alex', 
	ContactName = 'skr', 
    Address = 'tud.99', 
    City = 'Licor', 
    PostalCode = '9999', 
    Country = 'Sweden'
 WHERE CustomerId = 93;
 -- 수정 전 꼭 확인하기