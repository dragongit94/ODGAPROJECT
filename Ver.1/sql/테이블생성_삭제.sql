--create user odga identified by java;
--grant connect, resource to odga;
--conn odga/java

--���̺� ����
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE TOURLOC CASCADE CONSTRAINTS;
DROP TABLE HOTEL CASCADE CONSTRAINTS;
DROP TABLE PLANER CASCADE CONSTRAINTS;
DROP TABLE S_PLANER CASCADE CONSTRAINTS;
DROP TABLE RESTAURANT CASCADE CONSTRAINTS;
DROP TABLE FILE_P CASCADE CONSTRAINTS;
DROP TABLE ADMIN CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE AREA CASCADE CONSTRAINTS;

--������ ����
DROP SEQUENCE BOARD_ID;
DROP SEQUENCE TOURLOC_ID;
DROP SEQUENCE HOTEL_ID;
DROP SEQUENCE PLANER_ID;
DROP SEQUENCE S_PLANER_ID;
DROP SEQUENCE RESTAURANT_ID;
DROP SEQUENCE FILE_P_ID;
DROP SEQUENCE ADMIN_ID;
DROP SEQUENCE MEMBER_ID;
DROP SEQUENCE REPLY_ID;
DROP SEQUENCE AREA_ID;

PURGE RECYCLEBIN;

--���̺� ����/�⺻Ű ����

-- �Խ���
CREATE TABLE "BOARD" (
      "B_ID" NUMBER NOT NULL, -- ��id,
      "B_WRITER" VARCHAR2(20) NOT NULL, -- �ۼ���,
      "B_SUBJECT" VARCHAR2(100) NULL, -- ����,
      "B_CONTENT" VARCHAR2(500) NULL, -- ����,
      "B_RDATE" DATE NULL, -- �ۼ���,
      "B_CATGO" VARCHAR2(40) NULL, -- ī�װ�
      "B_LIKE" NUMBER, -- ���ƿ��
      "M_ID" NUMBER, -- ȸ��id,
      "A_ID" NUMBER -- ������id
);

-- �Խ���
ALTER TABLE "BOARD"
   ADD CONSTRAINT "PK_BOARD" -- �Խ��� �⺻Ű
   PRIMARY KEY (
      "B_ID" -- ��id
   );

-- ������
CREATE TABLE "TOURLOC" (
      "T_ID" NUMBER NOT NULL, -- ������id,
      "T_CATGO" VARCHAR2(40) NULL, -- ī�װ�,
      "T_NAME" VARCHAR2(100) NULL, -- ��Ҹ�,
      "T_EXP" VARCHAR2(500) NULL, -- ����,
      "T_ADDR" VARCHAR2(255) NULL, -- �ּ�,
      "T_HOMEP" VARCHAR2(255) NULL, -- Ȩ������,
      "T_MPHO" VARCHAR2(600) NULL, -- ��ǥ����,
      "A_ID" NUMBER NULL -- ����id
);

-- ������
ALTER TABLE "TOURLOC"
   ADD CONSTRAINT "PK_TOURLOC" -- ������ �⺻Ű
   PRIMARY KEY (
      "T_ID" -- ������id
   );

-- ����
CREATE TABLE "HOTEL" (
      "H_ID" NUMBER NOT NULL, -- ����id,
      "H_CATGO" VARCHAR2(40) NULL, -- ī�װ�,
      "H_NAME" VARCHAR2(100) NULL, -- ���Ҹ�,
      "H_ADDR" VARCHAR2(255) NULL, -- �ּ�,
      "H_MPHO" VARCHAR2(355) NULL, -- ��ǥ����,
      "H_HOMEP" VARCHAR2(255) NULL, -- Ȩ������,
      "A_ID" NUMBER NOT NULL -- ����id
);

-- ����
ALTER TABLE "HOTEL"
   ADD CONSTRAINT "PK_HOTEL" -- ���� �⺻Ű
   PRIMARY KEY (
      "H_ID" -- ����id
   );


-- �÷���
CREATE TABLE "PLANER" (
      "P_ID" NUMBER NOT NULL, --�÷�id
      "P_RDATE" DATE,
      "M_ID" NUMBER  -- ȸ��id
);

-- �÷���
ALTER TABLE "PLANER"
   ADD CONSTRAINT "PK_PLANER" -- �÷��� �⺻Ű
   PRIMARY KEY (
      "P_ID" -- �÷�id
   );

-- �����÷���
CREATE TABLE "S_PLANER" (
      "SP_ID" NUMBER NOT NULL, -- �����÷�id,
      "SP_DAY" NUMBER NULL, -- DAY,
      "SP_SDAY" DATE NULL, -- ������,
      "SP_EDAY" DATE NULL, -- ������,
      "A_ID" NUMBER, -- ����id,
      "T_ID" NUMBER, -- ������id
      "P_ID" NUMBER -- �÷���id
);

-- �����÷���
ALTER TABLE "S_PLANER"
   ADD CONSTRAINT "PK_S_PLANER" -- �����÷��� �⺻Ű
   PRIMARY KEY (
      "SP_ID" -- �����÷�id
   );

-- ����
CREATE TABLE "RESTAURANT" (
      "R_ID" NUMBER NOT NULL, -- ����id,
      "R_CATGO" VARCHAR2(40) NULL, -- ī�װ�,
      "R_NAME" VARCHAR2(100) NULL, -- ��Ҹ�,
      "R_ADDR" VARCHAR2(255) NULL, -- �ּ�,
      "R_MPHO" VARCHAR2(355) NULL, -- ��ǥ����,
      "R_HOMEP" VARCHAR2(255) NULL, -- Ȩ������,
      "A_ID" NUMBER NOT NULL -- ����id
);

-- ����
ALTER TABLE "RESTAURANT"
   ADD CONSTRAINT "PK_RESTAURANT" -- ���� �⺻Ű
   PRIMARY KEY (
      "R_ID" -- ����id
   );

-- �������ε�
CREATE TABLE "FILE_P" (
      "F_ID" NUMBER NOT NULL, -- ����id,
      "F_FNAME" VARCHAR2(100) NULL, -- �����̸�,
      "F_FSIZE" NUMBER NULL, -- ���ϻ�����,
      "F_DESC" VARCHAR2(300) NULL, -- ��������
      "B_ID" NUMBER NOT NULL -- ��id
);

-- �������ε�
ALTER TABLE "FILE_P"
   ADD CONSTRAINT "PK_FILE_P" -- �������ε� �⺻Ű
   PRIMARY KEY (
      "F_ID" -- ����id
   );

-- ������
CREATE TABLE "ADMIN" (
      "A_ID" NUMBER NOT NULL, -- ������id,
      "A_EMAIL" VARCHAR2(40) NULL, -- �̸���,
      "A_PWD" VARCHAR2(40) NULL, -- ��й�ȣ,
      "A_PHONE" VARCHAR(30) NULL -- ��ȭ��ȣ
);

-- ������
ALTER TABLE "ADMIN"
   ADD CONSTRAINT "PK_ADMIN" -- ������ �⺻Ű
   PRIMARY KEY (
      "A_ID" -- ������id
   );

-- ȸ��
CREATE TABLE "MEMBER" (
      "M_ID" NUMBER NOT NULL, -- ȸ��id,
      "M_EMAIL" VARCHAR2(40) NOT NULL, -- �̸���,
      "M_PWD" VARCHAR2(40) NULL, -- ��й�ȣ
      "M_NICK" VARCHAR2(100) NULL, -- �г���,
      "M_PHONE" VARCHAR2(30) NULL, -- ��ȭ��ȣ,
      "M_GENDER" VARCHAR(10) NULL, -- ����,
      "M_BIRTH" DATE NULL, -- �������,
      "M_RDATE" DATE NULL -- ������
);

-- ȸ��
ALTER TABLE "MEMBER"
   ADD CONSTRAINT "PK_MEMBER" -- ȸ�� �⺻Ű
   PRIMARY KEY (
      "M_ID" -- ȸ��id
   );

-- ���
CREATE TABLE "REPLY" (
      "RE_ID" NUMBER NOT NULL, -- ���id,
      "RE_WRITER" VARCHAR2(20) NULL, -- �ۼ���,
      "RE_CONTENT" VARCHAR2(500) NULL, -- ����,
      "RE_RDATE" DATE NULL, -- �ۼ���,
      "B_ID" NUMBER NOT NULL -- ��id
);

-- ���
ALTER TABLE "REPLY"
   ADD CONSTRAINT "PK_REPLY" -- ��� �⺻Ű
   PRIMARY KEY (
      "RE_ID" -- ���id
   );

-- ����
CREATE TABLE "AREA" (
      "A_ID" NUMBER NOT NULL, -- ����id,
      "A_DO" VARCHAR2(40) NOT NULL, -- ��,
      "A_SG" VARCHAR2(40) NOT NULL -- ��/��
);

-- ����
ALTER TABLE "AREA"
   ADD CONSTRAINT "PK_AREA" -- ���� �⺻Ű
   PRIMARY KEY (
      "A_ID" -- ����id
   );


--�ܷ�Ű

-- �Խ���
ALTER TABLE "BOARD"
   ADD CONSTRAINT "FK_MEMBER_TO_BOARD" -- ȸ�� -> �Խ���
   FOREIGN KEY (
      "M_ID" -- ȸ��id
   )
   REFERENCES "MEMBER" ( -- ȸ��
      "M_ID" -- ȸ��id
   );

-- �Խ���
ALTER TABLE "BOARD"
   ADD CONSTRAINT "FK_ADMIN_TO_BOARD" -- ������ -> �Խ���
   FOREIGN KEY (
      "A_ID" -- ������id
   )
   REFERENCES "ADMIN" ( -- ������
      "A_ID" -- ������id
   );

-- ������
ALTER TABLE "TOURLOC"
   ADD CONSTRAINT "FK_AREA_TO_TOURLOC" -- ���� -> ������
   FOREIGN KEY (
      "A_ID" -- ����id
   )
   REFERENCES "AREA" ( -- ����
      "A_ID" -- ����id
   );

-- ����
ALTER TABLE "HOTEL"
   ADD CONSTRAINT "FK_AREA_TO_HOTEL" -- ���� -> ����
   FOREIGN KEY (
      "A_ID" -- ����id
   )
   REFERENCES "AREA" ( -- ����
      "A_ID" -- ����id
   );


-- �÷���
ALTER TABLE "PLANER"
   ADD CONSTRAINT "FK_MEMBER_TO_PLANER" -- ȸ�� -> �÷���
   FOREIGN KEY (
      "M_ID" -- ȸ��id
   )
   REFERENCES "MEMBER" ( -- ȸ��
      "M_ID" -- ȸ��id
   );

-- �����÷���
ALTER TABLE "S_PLANER"
   ADD CONSTRAINT "FK_AREA_TO_S_PLANER" -- ���� -> �����÷���
   FOREIGN KEY (
      "A_ID" -- ����id
   )
   REFERENCES "AREA" ( -- ����
      "A_ID" -- ����id
   );
 
 -- �����÷���
ALTER TABLE "S_PLANER"
   ADD CONSTRAINT "FK_TOURLOC_TO_S_PLANER" -- ������ -> �����÷���
   FOREIGN KEY (
      "T_ID" -- ������id
   )
   REFERENCES "TOURLOC" ( -- ������
      "T_ID" -- ������id
   );

-- �����÷���
ALTER TABLE "S_PLANER"
   ADD CONSTRAINT "FK_PLANER_TO_S_PLANER" -- �÷��� -> �����÷���
   FOREIGN KEY (
      "P_ID" -- �÷���id
   )
   REFERENCES "PLANER" ( -- �÷���
      "P_ID"
   );

-- ����
ALTER TABLE "RESTAURANT"
   ADD CONSTRAINT "FK_AREA_TO_RESTAURANT" -- ���� -> ����
   FOREIGN KEY (
      "A_ID" -- ����id
   )
   REFERENCES "AREA" ( -- ����
      "A_ID" -- ����id
   );

-- �������ε�
ALTER TABLE "FILE_P"
   ADD CONSTRAINT "FK_BOARD_TO_FILE_P" -- �Խ��� -> �������ε�
   FOREIGN KEY (
      "B_ID" -- ��id
   )
   REFERENCES "BOARD" ( -- �Խ���
      "B_ID" -- ��id
   );

-- ���
ALTER TABLE "REPLY"
   ADD CONSTRAINT "FK_BOARD_TO_REPLY" -- �Խ��� -> ���
   FOREIGN KEY (
      "B_ID" -- ��id
   )
   REFERENCES "BOARD" ( -- �Խ���
      "B_ID" -- ��id
   );


--������ ����

--������
CREATE SEQUENCE ADMIN_ID
INCREMENT BY 1
START WITH 1
nocache;

--���
CREATE SEQUENCE REPLY_ID
INCREMENT BY 1
START WITH 1
nocache;

--÷������
CREATE SEQUENCE FILE_P_ID
INCREMENT BY 1
START WITH 1
nocache;

--�Խ���
CREATE SEQUENCE BOARD_ID
INCREMENT BY 1
START WITH 1
nocache;

--�÷���
CREATE SEQUENCE PLANER_ID
INCREMENT BY 1
START WITH 1
nocache;

--�����÷���
CREATE SEQUENCE S_PLANER_ID
INCREMENT BY 1
START WITH 1
nocache;

--ȸ��
CREATE SEQUENCE MEMBER_ID
INCREMENT BY 1
START WITH 1
nocache;

--����
CREATE SEQUENCE AREA_ID
INCREMENT BY 1
START WITH 1
nocache;

--������
CREATE SEQUENCE TOURLOC_ID
INCREMENT BY 1
START WITH 1
nocache;

--����
CREATE SEQUENCE RESTAURANT_ID
INCREMENT BY 1
START WITH 1
nocache;

--����
CREATE SEQUENCE HOTEL_ID
INCREMENT BY 1
START WITH 1
nocache;