-- 사원 테이블 작성 --
CREATE TABLE emp2021 
             ( 
                          emp_id               NUMBER NOT NULL,             -- 사원번호
                          emp_name             VARCHAR2(50) NOT NULL,       -- 이름
                          emp_gender           VARCHAR2(10) NOT NULL,       -- 성별
                          emp_age              NUMBER NOT NULL,             -- 나이
                          emp_entering_date    DATE NOT NULL,               -- 입사일
                          emp_rank             VARCHAR2(100) NOT NULL,      -- 직급
                          emp_salary           NUMBER NOT NULL,             -- 연봉
                          emp_education        VARCHAR2(50) NOT NULL,       -- 학력
                          emp_living_area      VARCHAR2(100) NOT NULL,      -- 지역
                          emp_own_car          VARCHAR2(10) NOT NULL,       -- 자차소유
                          emp_own_house        VARCHAR2(10) NOT NULL,       -- 자가소유
                          emp_marriage_status  VARCHAR2(10) NOT NULL,       -- 혼인여부
                          emp_number_children  NUMBER NOT NULL,             -- 자녀수
                          emp_number_family    NUMBER NOT NULL,             -- 가족수
                          emp_distance_company VARCHAR2(30) NOT NULL,       -- 회사와의 거리
                          emp_etc              VARCHAR2(1000) NULL,         -- 기타사항
                          PRIMARY KEY(emp_id)
             );
             
-- 사원 테이블 조회
SELECT * 
FROM   emp2021;

-- 사원번호 시퀀스 형성
CREATE SEQUENCE seq_emp_id START WITH 1 INCREMENT BY 1;

-- 사원번호 시퀀스 삭제
DROP SEQUENCE seq_emp_id;

-- 사원 데이터 입력
-- 사원번호는 시퀀스 자동 생성(.nextval)
INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '안정환', '남성', 34, '2020-06-22', '사원', 3000, '대졸', '서울', '있음', '있음', '기혼', 3, 5, '15km', '');

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '홍명보', '남성', 40, '2018-05-10', '매니저', 4000, '대졸', '서울', '있음', '있음', '기혼', 2, 4, '10km', '');

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '송종국', '남성', 25, '2015-04-10', '부사장', 8000, '대졸', '인천', '있음', '있음', '기혼', 4, 6, '8km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '이천수', '남성', 38, '2016-07-25', '부장', 6000, '대졸', '경기', '있음', '있음', '기혼', 3, 5, '20km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '김남일', '남성', 45, '2019-01-02', '사원', 3500, '고졸', '부산', '없음', '있음', '미혼', 0, 2, '11km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '유상철', '남성', 32, '2018-04-11', '매니저', 4000, '대졸', '대구', '있음', '있음', '기혼', 2, 4, '30km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '김병지', '남성', 28, '2017-09-30', '매니저', 5000, '대졸', '광주', '있음', '있음', '기혼', 2, 4, '28km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '손흥민', '남성', 30, '2020-02-22', '사원', 3000, '고졸', '대전', '없음', '없음', '기혼', 0, 2, '18km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '박지성', '남성', 40, '2015-03-28', '사장', 10000, '대졸', '강원', '있음', '있음', '기혼', 3, 5, '5km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '이운재', '남성', 36, '2019-09-27', '매니저', 3000, '대졸', '충남', '있음', '없음', '미혼', 0, 4, '22km', ''); 

-- 커밋 실행
COMMIT;