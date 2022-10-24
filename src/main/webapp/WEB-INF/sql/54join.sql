USE w3schools;
SELECT * FROM Products;
-- 상품명 상품을 공급하는 공급자명 조회
SELECT p.ProductName, s.SupplierName 
FROM Products p JOIN Suppliers s
	ON p.SupplierID = s.SupplierID; 

SELECT * FROM Suppliers;
-- 'Tofu'를 공급하는 공급자가 사는 도시
SELECT s.City
FROM Products p JOIN Suppliers s
	ON p.SupplierID = s.SupplierID
    WHERE p.ProductName = 'Tofu';
 -- 'Mayumi''s'가 공급하는 상품명들 조회
 SELECT p.ProductName
 FROM Products p JOIN Suppliers s
	ON p.SupplierID = s.SupplierID 
    WHERE s.SupplierName = 'Mayumi''s';

SELECT * FROM Orders;
SELECT * FROM Customers;
SELECT * FROM Orders WHERE OrderDate = '1996-07-04';    
-- 1996-07-04 주문한 고객명
SELECT c.CustomerName
FROM Orders o JOIN Customers c
	ON o.CustomerID = c.CustomerID
	WHERE o.OrderDate = '1996-07-04';


SELECT * FROM Employees;
-- 1996-07-04 주문을 처리한 직원명   
SELECT e.LastName, FirstName
FROM Orders o JOIN Employees e
		ON o.EmployeeID = e.EmployeeID
		WHERE o.OrderDate = '1996-07-04';

SELECT * FROM Shippers;
-- 1996-07-04 주문을 배송한 배송자명 조회      
SELECT s.ShipperName    
FROM Orders o JOIN Shippers s
		ON o.ShipperID = s.ShipperID
		WHERE o.OrderDate = '1996-07-04';
    
    
    
    
    