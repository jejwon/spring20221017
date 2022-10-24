-- LIKE : 패턴으로 레코드 조회
-- wildcard(패턴에서 사용하는 특수 기호)
-- : %(0개 이상의 문자), _(하나의 문자)

SELECT * FROM Customers WHERE CustomerName LIKE 'A%'; -- a로 시작
SELECT * FROM Customers WHERE CustomerName LIKE '%A'; -- a로 끝
SELECT * FROM Customers WHERE CustomerName LIKE '%OR%'; -- 중간에 or가 들어가면
SELECT * FROM Customers WHERE CustomerName LIKE '_R%'; -- 두번째가 r이 있어야
SELECT * FROM Customers WHERE CustomerName LIKE 'A_%_%'; -- a로 시작하는 3글자
SELECT * FROM Customers WHERE ContactName LIKE 'A%O'; -- a로 시작 o로 끝

SELECT * FROM Employees WHERE FirstName LIKE 'A%';

SELECT * FROM Suppliers WHERE ContactName LIKE '%E';

SELECT * FROM Products WHERE ProductName LIKE 'C%S';

SELECT * FROM Products WHERE ProductName LIKE 'C____';


