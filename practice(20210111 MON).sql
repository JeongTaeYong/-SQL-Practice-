-- ��� ���̺� �ۼ� --
CREATE TABLE emp2021 
             ( 
                          emp_id               NUMBER NOT NULL,             -- �����ȣ
                          emp_name             VARCHAR2(50) NOT NULL,       -- �̸�
                          emp_gender           VARCHAR2(10) NOT NULL,       -- ����
                          emp_age              NUMBER NOT NULL,             -- ����
                          emp_entering_date    DATE NOT NULL,               -- �Ի���
                          emp_rank             VARCHAR2(100) NOT NULL,      -- ����
                          emp_salary           NUMBER NOT NULL,             -- ����
                          emp_education        VARCHAR2(50) NOT NULL,       -- �з�
                          emp_living_area      VARCHAR2(100) NOT NULL,      -- ����
                          emp_own_car          VARCHAR2(10) NOT NULL,       -- ��������
                          emp_own_house        VARCHAR2(10) NOT NULL,       -- �ڰ�����
                          emp_marriage_status  VARCHAR2(10) NOT NULL,       -- ȥ�ο���
                          emp_number_children  NUMBER NOT NULL,             -- �ڳ��
                          emp_number_family    NUMBER NOT NULL,             -- ������
                          emp_distance_company VARCHAR2(30) NOT NULL,       -- ȸ����� �Ÿ�
                          emp_etc              VARCHAR2(1000) NULL,         -- ��Ÿ����
                          PRIMARY KEY(emp_id)
             );
             
-- ��� ���̺� ��ȸ
SELECT * 
FROM   emp2021;

-- �����ȣ ������ ����
CREATE SEQUENCE seq_emp_id START WITH 1 INCREMENT BY 1;

-- �����ȣ ������ ����
DROP SEQUENCE seq_emp_id;

-- ��� ������ �Է�
-- �����ȣ�� ������ �ڵ� ����(.nextval)
INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '����ȯ', '����', 34, '2020-06-22', '���', 3000, '����', '����', '����', '����', '��ȥ', 3, 5, '15km', '');

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, 'ȫ��', '����', 40, '2018-05-10', '�Ŵ���', 4000, '����', '����', '����', '����', '��ȥ', 2, 4, '10km', '');

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '������', '����', 25, '2015-04-10', '�λ���', 8000, '����', '��õ', '����', '����', '��ȥ', 4, 6, '8km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '��õ��', '����', 38, '2016-07-25', '����', 6000, '����', '���', '����', '����', '��ȥ', 3, 5, '20km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '�賲��', '����', 45, '2019-01-02', '���', 3500, '����', '�λ�', '����', '����', '��ȥ', 0, 2, '11km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '����ö', '����', 32, '2018-04-11', '�Ŵ���', 4000, '����', '�뱸', '����', '����', '��ȥ', 2, 4, '30km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '�躴��', '����', 28, '2017-09-30', '�Ŵ���', 5000, '����', '����', '����', '����', '��ȥ', 2, 4, '28km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '�����', '����', 30, '2020-02-22', '���', 3000, '����', '����', '����', '����', '��ȥ', 0, 2, '18km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '������', '����', 40, '2015-03-28', '����', 10000, '����', '����', '����', '����', '��ȥ', 3, 5, '5km', ''); 

INSERT INTO emp2021
VALUES (SEQ_EMP_ID.nextval, '�̿���', '����', 36, '2019-09-27', '�Ŵ���', 3000, '����', '�泲', '����', '����', '��ȥ', 0, 4, '22km', ''); 

-- Ŀ�� ����
COMMIT;