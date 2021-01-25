/* 문자열 결합 연산자 */
/* dual은 단순히 어떤 연산 결과를 보고자 할 때 사용하는 임시 테이블 */
SELECT 'SQL' || 'LOVE'
FROM   dual;

/* ROUND 함수 */
SELECT Round(686.297, -1) first     /* 첫 번째 자리에서 반올림 */ 
FROM   dual;

SELECT Round(686.297, -2) second     /* 두 번째 자리에서 반올림 */ 
FROM   dual;

SELECT Round(686.297, -3) third     /* 세 번째 자리에서 반올림 */ 
FROM   dual;

/* SUBSTR 함수 */
SELECT Substr('ORACLE', 1, 3) first
FROM   dual;    /* 첫 번째 자리에서부터 3개를 잘라낸 결과를 반환 */

SELECT Substr('ORACLE', 0, 3) second
FROM   dual;    /* 첫 번째 자리에서부터 3개를 잘라낸 결과를 반환, 0과 1은 같음 */

SELECT Substr('ORACLE', 1) third
FROM   dual;    /* 첫 번째 자리에서부터 전체를 반환 */

SELECT Substr('ORACLE', -2) fourth
FROM   dual;    /* 오른쪽 두 번째 문자부터 끝까지 반환 */

SELECT Substr('ORACLE', -2, 1) fifth
FROM   dual;    /* 오른쪽 두 번째 문자부터 1개를 반환 */

SELECT Substr('ORACLE', 2, -1) sixth
FROM   dual;    /* n2가 음수이면 null을 반환 */

/* INSTR 함수 */
SELECT Instr('ORACLEARENA', 'A') first
FROM   dual;    /* A를 처음 만나는 자릿수 */

SELECT Instr('ORACLEARENA', 'A', 2) second
FROM   dual;    /* R에서 A를 처음 만나는 자릿수 */

SELECT Instr('ORACLEARENA', 'A', 2, 1) third
FROM   dual;    /* R에서 A를 처음 만나는 자릿수 */

SELECT Instr('ORACLEARENA', 'A', 2, 2) fourth
FROM   dual;    /* R에서 A를 두 번째 만나는 자릿수 */

/* TO_CHAR를 이용하여 현재 날짜를 문자로 변환 */
SELECT To_char(SYSDATE, 'yyyy-mm-dd hh24:mi:ss')
FROM   dual;

/* TO_date를 이용하여 현재 날짜를 나타내는 문자열을 날짜형으로 변환 */
SELECT To_date(SYSDATE, 'yyyy-mm-dd')
FROM   dual;

/* nvl : null이 있을 경우 대체값을 반환 */
SELECT Nvl(NULL, 'n/a')
FROM   dual;

/* nvl2 : n1이 null일 경우 n3을 반환, n1이 null이 아닐 경우 n2를 반환 */
SELECT Nvl2(1, 2, 3)
FROM   dual;

/* coalesce : null이 아닌 첫 번째 값을 반환 */
SELECT Coalesce(NULL, NULL, 5, 4, NULL)
FROM   dual;

/* nullif : 첫 번째 값과 두 번째 값이 같지 않으면 첫 번째 값 반환 */
SELECT Nullif('Null', 'null')
FROM   dual;