SHOW DATABASES;

use mysql;

create schema find_animal default character set utf8;


USE find_animal;


-- 회원정보
CREATE TABLE `MEMBER` (
	`ID`    VARCHAR(20)  NOT NULL COMMENT '아이디', -- 아이디
	`UNAME` VARCHAR(50)  NOT NULL COMMENT '글쓴이', -- 글쓴이
	`TEL`   VARCHAR(30)  NOT NULL COMMENT '전화', -- 전화
	`ADDR`  VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
	`PWD`   VARCHAR(20)  NOT NULL COMMENT '비밀번호' -- 비밀번호
)
COMMENT '회원정보';

-- 회원정보
ALTER TABLE `MEMBER`
	ADD CONSTRAINT `PK_MEMBER` -- 회원정보 기본키
		PRIMARY KEY (
			`ID` -- 아이디
		);

-- 동물게시글 정보
CREATE TABLE `BOARD` (
	`BNO`     INTEGER       NOT NULL COMMENT '게시글번호', -- 게시글번호
	`BREED`   VARCHAR(50)   NOT NULL COMMENT '품종', -- 품종
	`F_PLACE` VARCHAR(1000) NOT NULL COMMENT '발견장소', -- 발견장소
	`F_DATE`  DATE          NOT NULL COMMENT '발견날짜', -- 발견날짜
	`GENDER`  VARCHAR(5)    NOT NULL COMMENT '성별', -- 성별
	`TITLE`   VARCHAR(1000) NOT NULL COMMENT '글제목', -- 글제목
	`CONTENT` VARCHAR(1000) NOT NULL COMMENT '내용', -- 내용
	`ID`      VARCHAR(20)   NOT NULL COMMENT '아이디' -- 아이디
)
COMMENT '동물게시글 정보';

-- 동물게시글 정보
ALTER TABLE `BOARD`
	ADD CONSTRAINT `PK_BOARD` -- 동물게시글 정보 기본키
		PRIMARY KEY (
			`BNO` -- 게시글번호
		);

ALTER TABLE `BOARD`
	MODIFY COLUMN `BNO` INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- 동물사진정보
CREATE TABLE `PHOTO` (
	`PNO`   INTEGER      NOT NULL COMMENT '사진번호', -- 사진번호
	`PHOTO` VARCHAR(255) NOT NULL COMMENT '사진', -- 사진
	`BNO`   INTEGER      NOT NULL COMMENT '게시글번호' -- 게시글번호
)
COMMENT '동물사진정보';

-- 동물사진정보
ALTER TABLE `PHOTO`
	ADD CONSTRAINT `PK_PHOTO` -- 동물사진정보 기본키
		PRIMARY KEY (
			`PNO` -- 사진번호
		);

ALTER TABLE `PHOTO`
	MODIFY COLUMN `PNO` INTEGER NOT NULL AUTO_INCREMENT COMMENT '사진번호';

-- 동물게시글 정보
ALTER TABLE `BOARD`
	ADD CONSTRAINT `FK_MEMBER_TO_BOARD` -- 회원정보 -> 동물게시글 정보
		FOREIGN KEY (
			`ID` -- 아이디
		)
		REFERENCES `MEMBER` ( -- 회원정보
			`ID` -- 아이디
		);

-- 동물사진정보
ALTER TABLE `PHOTO`
	ADD CONSTRAINT `FK_BOARD_TO_PHOTO` -- 동물게시글 정보 -> 동물사진정보
		FOREIGN KEY (
			`BNO` -- 게시글번호
		)
		REFERENCES `BOARD` ( -- 동물게시글 정보
			`BNO` -- 게시글번호
		);
        
        
show tables;  

use find_animal;

show tables;

SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES('test01','지각생짜저','010-0000-0000','여기','111');

commit;

SELECT * FROM MEMBER WHERE ID = 'test01' AND pwd ='111'; 