USE w3schools;

SELECT * FROM Employees;
-- INSERT INTO : 테이블에 레코드 추가하는 명령문
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'Son', 'HM', '1999-01-01', 'EmpID10.pic', 'soccer player');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11, 'Con', 'Pana', '1980-09-12', 'EmpID11.pic', 'gardener');

-- 12번째 직원 추가, notes 컬럼 빼고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12, 'Dong', 'Geul', '1998-12-10', 'EmpID12.pic');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, Photo)
VALUES
(13, 'Gam', 'Gyul','EmpID13.pic');

INSERT INTO Employees
(LastName, FirstName)
VALUES
('La', 'Vender');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Na', 'Gildong', '');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Da', 'Gildong', ' ');

-- NULL : 값이 없음

SELECT * FROM Customers;
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('92', 'Johan', 'Jeff', 'Catalla st.2', 'Madrid', '76-200', 'Spain');

INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('Daran', 'Dr', 'Berlin', 'Germany');

INSERT INTO Customers
(CustomerName, ContactName, City, PostalCode, Country)
VALUES
('Hana', 'Nara', 'Seoul', '', 'Korea');

DESC Customers; -- DESCRIBE 테이블 구조 보기 /제약사항(constraints) 조회
-- key 설정: 다른 레코드와 중복된 값 불가 