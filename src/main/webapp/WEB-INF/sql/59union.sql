USE mydb6;

-- UNION : 합집합 (중복 제거)
-- UNION ALL (중복 포함)
SELECT * FROM TableA
UNION ALL
SELECT * FROM TableB;

-- FULL OUTER JOIN 
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1 = b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;