--ȸ��
INSERT INTO MEMBER VALUES (MEMBER_ID.nextval, 'ymhur2030@naver.com', '1234' , '������', '��', '010-5519-5448', '����', '98/02/03',SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_ID.nextval, 'chikchok@naver.com', '1234' , 'Ģ��', '', '010-1234-1234', '����', '95/05/05',SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_ID.nextval, 'dfk@naver.com', '1234' , 'John', '��', '010-2344-4444', '����', '90/12/11',SYSDATE);
select * from member;

--������
INSERT INTO ADMIN VALUES (ADMIN_ID.nextval, '������', '1234', '010-1111-1111');
INSERT INTO ADMIN VALUES (ADMIN_ID.nextval, '������', '1234', '010-1111-1111');
INSERT INTO ADMIN VALUES (ADMIN_ID.nextval, '�̹ο�', '1234', '010-1111-1111');
INSERT INTO ADMIN VALUES (ADMIN_ID.nextval, '�Ǽ�ȯ', '1234', '010-1111-1111');
INSERT INTO ADMIN VALUES (ADMIN_ID.nextval, '������', '1234', '010-1111-1111');
select * from ADMIN;

--�Խ���
INSERT INTO BOARD VALUES (BOARD_ID.nextval, '������', '���', '�ȳļ���', SYSDATE, '�����ı�',0, 2, null);
INSERT INTO BOARD VALUES (BOARD_ID.nextval, 'Ģ��', '11', '�ȳļ���', SYSDATE, '�����ı�', 0, 3, null);
INSERT INTO BOARD VALUES (BOARD_ID.nextval, '��', '����', '�ȳļ���', SYSDATE, '�����ϱ�', 0, 2, null);
select * from BOARD;

--����
INSERT INTO AREA VALUES (AREA_ID.nextval, '��⵵', '����');
INSERT INTO AREA VALUES (AREA_ID.nextval, '��û�ϵ�', 'û�ֽ�');
INSERT INTO AREA VALUES (AREA_ID.nextval, '���ϵ�', '���׽�');
select * from AREA;

--������
INSERT INTO TOURLOC VALUES (TOURLOC_ID.nextval, '������', '�ϻ�Į����', '�ϻ��� �ڶ�! �ϻ��� ��!','��� ���� �ϻ굿�� �鼮��108���� 6-16',null,null,2);
INSERT INTO TOURLOC VALUES (TOURLOC_ID.nextval, '�ؼ�����', '���ϴ��ؼ�����', '������ ���� ��������','��� ���׽� �ϱ� ��ȣ�� 685-1',null,null,4);
INSERT INTO TOURLOC VALUES (TOURLOC_ID.nextval, '�߰���', '���ϰ�', '�߰� ¯','��� û�ֽ� ��籸 ������ 15-4',null,null,3);
select * from TOURLOC;

--����
INSERT INTO HOTEL VALUES (HOTEL_ID.nextval, 'ȣ��', '�ҳ�į ���', '��⵵ ���� �ϻ굿�� �±ط� 20 �ҳ�į ���',null,null,2);
INSERT INTO HOTEL VALUES (HOTEL_ID.nextval, '���', '��ġ���Ǯ����', '��� ���׽� �ϱ� �۶�� ��ȭ�� 202',null,null,3);
INSERT INTO HOTEL VALUES (HOTEL_ID.nextval, 'ȣ��', '�׷����ö���û��ȣ��', '��� û�ֽ� û���� ��û��� 114',null,null,4);
select * from HOTEL;

--����
INSERT INTO FILE_P VALUES (FILE_P_ID.nextval, 'asd.jpg', 156223, '�̰Ž� asd', 3);
INSERT INTO FILE_P VALUES (FILE_P_ID.nextval, '�̰͵��Է��̵����𸣰�����.png', 1562235, '�̰Ž� �̰͵�', 2);
INSERT INTO FILE_P VALUES (FILE_P_ID.nextval, '����������ɱ��ѹ��Է����غ��ڽ��ϴ�.jpg', 123, '�̰Ž� �������', 1);
select * from FILE_P;

--�÷���
INSERT INTO PLANER VALUES (PLANER_ID.nextval, sysdate, 1);
INSERT INTO PLANER VALUES (PLANER_ID.nextval, sysdate, 2);
INSERT INTO PLANER VALUES (PLANER_ID.nextval, sysdate, 3);
select * from PLANER;

--�����÷���
INSERT INTO S_PLANER VALUES (S_PLANER_ID.nextval, 1, '2021-02-05', '2021-02-06',1,1,1);
INSERT INTO S_PLANER VALUES (S_PLANER_ID.nextval, 3, '2021-02-07', '2021-02-08',3,3,3);
INSERT INTO S_PLANER VALUES (S_PLANER_ID.nextval, 2, '2021-02-06', '2021-02-07',4,4,4);
select * from S_PLANER;

--����
INSERT INTO RESTAURANT VALUES (RESTAURANT_ID.nextval, '�ѽ�', '�ҸӴϼ��뱹��', '������ �����221','asdmkc.jpg','www.asd.co.kr',1);
INSERT INTO RESTAURANT VALUES (RESTAURANT_ID.nextval, '�ѽ�', '�Ҿƹ������뱹��', '������ �����222','asdmkcasd.jpg','www.asdd.co.kr',2);
INSERT INTO RESTAURANT VALUES (RESTAURANT_ID.nextval, '�߽�', '������', '������ �����223','assdmkc.jpg','www.assd.co.kr',3);
select * from restaurant;