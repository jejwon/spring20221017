-- COUNT() 함수: 레코드가 몇 개 인지?
SELECT * FROM Customers; -- 91개
SELECT COUNT(*) FROM Customers; -- 91개
SELECT COUNT(Country) FROM Customers; -- 91개
SELECT COUNT(DISTINCT Country) FROM Customers; -- 21개

SELECT COUNT(*) FROM Employees; -- 9개 
SELECT COUNT(DISTINCT Country) FROM Suppliers; -- 16개