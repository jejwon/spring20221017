-- Member 테이블 만들기

USE prj1;
DROP TABLE Member;

CREATE TABLE Member (
	id VARCHAR(255) PRIMARY KEY, -- 변경 불가
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    inserted DATETIME DEFAULT NOW()
);

SELECT * FROM Member;

SELECT 
 		id,
 		'숨김' password, 
 		email,
 		inserted
 	FROM Member
 	ORDER BY id