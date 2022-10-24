-- distinct
SELECT * FROM Customers;
SELECT Country FROM Customers; -- 91개
SELECT DISTINCT Country FROM Customers; -- 중복 제거: 21개
SELECT DISTINCT City, Country FROM Customers; -- 69개

-- Suppliers 테이블의 Country 컬럼을 모두 조회/ 중복 제거해서 조회
SELECT Country FROM Suppliers; -- 29개
SELECT DISTINCT Country FROM Suppliers; -- 16개
SELECT DISTINCT Country FROM Suppliers;