-- Member 테이블 만들기
CREATE TABLE Member (
	id VARCHAR(255) PRIMARY KEY, -- 변경 불가
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    inserted DATETIME DEFAULT NOW()
);