SELECT * 
FROM Orders
WHERE OrderDate = '1996-07-04';

SELECT * 
FROM OrderDetails
WHERE OrderID = '10248';

SELECT * 
FROM Products 
WHERE ProductID IN (11, 42, 72);

-- '1996-07-04'에 주문된 상품명들 조회'
SELECT p.ProductName
FROM OrderDetails d JOIN Orders o ON d.OrderID = o.OrderID
			JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate ='1996-07-04';

-- '1996-07-04'에 주문된 총 주문 금액
SELECT OrderDate, SUM(d.Quantity * p.Price)
FROM Orders o JOIN OrderDetails d ON d.OrderID = o.OrderID
			JOIN Products p ON d.ProductID = p.ProductID
GROUP BY o.OrderDate;

SELECT * FROM Orders;
-- 고객별 주문 총 금액 조회
SELECT c.CustomerID, c.CustomerName, SUM(d.Quantity * p.Price) Total -- AS 생략
FROM Orders o JOIN OrderDetails d ON d.OrderID = o.OrderID
			JOIN Products p ON d.ProductID = p.ProductID
            JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
HAVING Total >= 10000 -- (조건)
ORDER BY c.CustomerID;







