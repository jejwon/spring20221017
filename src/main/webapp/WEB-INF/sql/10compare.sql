-- greater than equal : >=
-- less than : <
-- less than equal : <=

SELECT * FROM Customers WHERE CustomerID >= 81;

-- 이름이 'a'/'b'/'c'/'d'로 시작하지 않는 직원들 조회 
SELECT * FROM Employees WHERE LastName >= 'e';

SELECT * FROM Orders WHERE OrderDate >= '1998-01-01';