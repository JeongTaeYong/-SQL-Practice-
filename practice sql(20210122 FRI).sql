/* 테이블 생성 */
CREATE TABLE nbaplayer 
  ( 
     nplr_id        NUMBER NOT NULL, 
     nplr_name      VARCHAR2(100) NOT NULL, 
     age            NUMBER NOT NULL, 
     nplr_team_name VARCHAR2(100) NOT NULL, 
     debut_date     DATE NOT NULL, 
     etc            VARCHAR2(300) NULL, 
     PRIMARY KEY (nplr_id) 
  );
  
/* 테이블 조회 */
SELECT * 
FROM   nbaplayer;

/* 데이터 입력 */
INSERT INTO nbaplayer (nplr_id, nplr_name, age, nplr_team_name, debut_date) 
VALUES (1, '스테판 커리', 34, '골든스테이트', '2009-01-01');

INSERT INTO nbaplayer (nplr_id, nplr_name, age, nplr_team_name, debut_date) 
VALUES (2, '마이클 조던', 55, '시카고', '1989-07-14');

INSERT INTO nbaplayer (nplr_id, nplr_name, age, nplr_team_name, debut_date) 
VALUES (3, '데니스 로드맨', 60, '시카고', '1983-05-31');

INSERT INTO nbaplayer (nplr_id, nplr_name, age, nplr_team_name, debut_date) 
VALUES (4, '르브론 제임스', 36, 'LA', '2000-04-15');

/* 커밋 */             
COMMIT;

/* 데이터 삭제 */
DELETE FROM nbaplayer 
WHERE  nplr_id = 4;

/* 롤백 */
ROLLBACK;

/* 테이블 조회 */
/* 날짜 형식 변경 : 도구 → 환경설정 → 데이터베이스 → NLS → 날짜형식 YYYY-MM-DD로 변경 */
SELECT * 
FROM   nbaplayer;

/* 특정 컬럼 조회 */
SELECT nplr_id, 
       age, 
       nplr_team_name 
FROM   nbaplayer;

/* 조건에 맞는 데이터 조회하기 */
/* 팀이름이 '시카고'인 데이터 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name = '시카고';

/* 조건에 맞는 데이터 조회하기 */
/* 팀이름이 '시카고'가 아닌 데이터 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name <> '시카고';

SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name != '시카고';

/* 조건에 맞는 데이터 조회하기 */
/* 2000년 1월 1일 이후 데뷔한 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  debut_date >= '2000-01-01'

/* 조건에 맞는 데이터 조회하기 */
/* 나이가 50세 이상인 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  age >= 50

/* 조건에 맞는 데이터 조회하기 */
/* 나이가 60세 이상이면서 시카고팀인 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  age >= 60 
       AND nplr_team_name = '시카고'
       
/* 조건에 맞는 데이터 조회하기 */
/* 시카고팀이거나 LA팀인 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name = '시카고' 
       OR nplr_team_name = 'LA'
       
/* 조건에 맞는 데이터 조회하기 */
/* 나이가 30세 이상인 선수 중 시카고나 LA가 팀인 선수 */
SELECT * 
FROM   nbaplayer 
WHERE  age >= 30 
       AND ( nplr_team_name = '시카고' 
              OR nplr_team_name = 'LA' );
              
/* 조건에 맞는 데이터 조회하기 */
/* 골든스테이트 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name LIKE '골%';

/* 조건에 맞는 데이터 조회하기 */
/* 시카고 팀에서 55세와 60세 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name LIKE '시%'
AND age IN (55, 60);

/* 조건에 맞는 데이터 조회하기 */
/* 시카고 팀에서 50세 ~ 59세인 선수 조회 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name LIKE '시%'
AND age BETWEEN 50 AND 59;

/* 팀이름으로 정렬 */
SELECT * 
FROM   nbaplayer 
ORDER  BY nplr_team_name;

/* 시카고 데이터 모든 컬럼 순서대로 정렬 */
SELECT * 
FROM   nbaplayer 
WHERE  nplr_team_name LIKE '시%' 
ORDER  BY 1, 2; 