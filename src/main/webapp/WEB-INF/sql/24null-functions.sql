-- NULL 관련 함수
SELECT * FROM Products;
SELECT COUNT(*) FROM Products;
SELECT AVG(Price) FROM Products;


-- IFNULL : 값이 없으면(NULL) 다른 값으로 바꿔서 조회
SELECT Price FROM Products;
SELECT IFNULL(Price, 0) FROM Products;

SELECT ProductID, ProductName, SupplierID, CategoryID, IFNULL(Price, 0) FROM Products;

SELECT AVG(Price) FROM Products;
SELECT AVG(IFNULL(Price, 0)) FROM Products; -- 더 많은 수로 나눠서 더 작은 값이 나옴

SELECT IFNULL(CustomerName, 'Anonymous') FROM Customers;
SELECT * FROM Customers;
SELECT IFNULL(Address, 'st.232') FROM Customers;





