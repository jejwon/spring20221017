-- 서브 쿼리 : 쿼리가 다른 쿼리 안에 작성될 수 있다.

SELECT MAX(Price) FROM Products; 

-- 가장 높은 가격의 상품명 조회
SELECT * FROM Products
WHERE Price = 
(SELECT MAX(Price) FROM Products); -- 테이블처럼 사용(행1, 열1)

-- 가장 낮은 가격의 상품명 조회
SELECT * FROM Products
WHERE Price = 
(SELECT MIN(Price) FROM Products);

-- 평균 가격보다 가격이 높은 상품 조회
SELECT * FROM Products WHERE Price > (SELECT AVG(Price) FROM Products);
-- 평균 가격보다 가격이 낮은 상품 조회
SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products); 

SELECT * 
FROM 
	(SELECT CategoryID, 
			AVG(Price) average 
	FROM Products 
	GROUP BY CategoryID) AS A -- 테이블에 별칭이 필요함
WHERE average > 30;




