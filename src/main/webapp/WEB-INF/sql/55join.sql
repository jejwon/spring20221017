SELECT * 
FROM Customers c JOIN Orders o JOIN Employees e;


-- 총 rows : c Row * o Row * e Row
-- 총 cols : c col + o col + e col

SELECT c.CustomerName, e.FirstName, e.LastName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID 
				JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- '1996-07-04'에 주문을 처리한 직원이름과 배송자명 조회
SELECT e.FirstName, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON e.EmployeeID = o.EmployeeID
				JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

