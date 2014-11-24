

CREATE TABLE `BOARD` (
	`BNO`     INTEGER      NOT NULL COMMENT '게시글번호', -- 게시글번호
	`ADDR`    VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
	`TEL`     VARCHAR(30)  NOT NULL COMMENT '전화번호', -- 전화번호
	`F_PLACE` VARCHAR(255) NOT NULL COMMENT '발견장소', -- 발견장소
	`F_DATE`  DATE         NOT NULL COMMENT '발견날짜', -- 발견날짜
	`GENDER`  VARCHAR(50)  NOT NULL COMMENT '성별', -- 성별
	`TITLE`   VARCHAR(255) NOT NULL COMMENT '글제목', -- 글제목
	`CONTENT` VARCHAR(255) NOT NULL COMMENT '내용', -- 내용
	`PHOTO`   VARCHAR(255) NOT NULL COMMENT '사진', -- 사진
	`UID`     VARCHAR(50)  NOT NULL COMMENT '아이디', -- 아이디
	`B_DATE`  DATE         NOT NULL COMMENT '등록일시', -- 등록일시
	`BREED`   VARCHAR(50)  NOT NULL COMMENT '품종' -- 품종
)
COMMENT '글 목록';

-- 글 목록
ALTER TABLE `BOARD`
	ADD CONSTRAINT `PK_BOARD` -- 글 목록 기본키
		PRIMARY KEY (
			`BNO` -- 게시글번호
		);

ALTER TABLE `BOARD`
	MODIFY COLUMN `BNO` INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- 회원 정보
CREATE TABLE `MEMBER` (
	`UID`   VARCHAR(50)  NOT NULL COMMENT '아이디', -- 아이디
	`PWD`   VARCHAR(50)  NOT NULL COMMENT '비밀번호 ', -- 비밀번호 
	`UNAME` VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
	`ADDR`  VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
	`TEL`   VARCHAR(30)  NOT NULL COMMENT '전화번호' -- 전화번호
)
COMMENT '회원 정보';

-- 회원 정보
ALTER TABLE `MEMBER`
	ADD CONSTRAINT `PK_MEMBER` -- 회원 정보 기본키
		PRIMARY KEY (
			`UID` -- 아이디
		);

-- 새 테이블
CREATE TABLE `TABLE` (
)
COMMENT '새 테이블';

-- 글 목록
ALTER TABLE `BOARD`
	ADD CONSTRAINT `FK_MEMBER_TO_BOARD` -- 회원 정보 -> 글 목록
		FOREIGN KEY (
			`UID` -- 아이디
		)
		REFERENCES `MEMBER` ( -- 회원 정보
			`UID` -- 아이디
		);