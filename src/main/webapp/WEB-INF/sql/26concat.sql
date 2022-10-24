-- CONCAT : 스트링을 연결한 결과 리턴
SELECT CONCAT('ab', 'de');
SELECT CONCAT('def', ' ', 'xyz', ' captain');

SELECT CustomerID, 
		CustomerName, 
        CONCAT(Address, ' ', City) address
FROM Customers;

SELECT CONCAT(FirstName, ' ', LastName) FullName FROM Employees;



