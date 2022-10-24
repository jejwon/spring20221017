-- WHERE 연산자 = : 값이 같다

SELECT * FROM Customers WHERE Country = 'UK';-- 문자열은 작은 따옴표/큰 따옴표 사용
SELECT * FROM Customers WHERE Country = "UK"; 

-- 작은 따옴표 표현은 작은 따옴표 2개 사용(or 역슬래시)
SELECT * FROM Customers WHERE CustomerName = 'B''s Beverages';
SELECT * FROM Customers WHERE CustomerName = 'B\'s Beverages';

-- 문자열은 대소문자를 구분하지 않는다
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE Country = 'mexico';
SELECT * FROM Customers WHERE Country = 'MEXICO';

-- 수(Number 형식) 비교
SELECT * FROM Customers WHERE CustomerID = '3';
SELECT * FROM Customers WHERE CustomerID = 3; -- 작은 따옴표 생략 가능

SELECT * FROM Suppliers WHERE SupplierID = 5;

SELECT * FROM Employees WHERE FirstName = 'Nancy';

SELECT BirthDate FROM Employees WHERE FirstName = 'Janet';

