--1�s�W���

INSERT INTO departments VALUES ( 71, 'Public Relations', 100, 1700 );

--�s�W�`�������~1  ���ƥD��
INSERT INTO departments VALUES ( 71, 'aaa', 100, 1700 );

--�s�W�`�������~2 �䤣��~����
INSERT INTO departments VALUES ( 72, 'aaa', 100, 1701 );

select * from DEPARTMENTS
select * from LOCATIONS 

--�s�W������� 
 INSERT INTO departments ( department_id, department_name )
              VALUES  ( 31, 'Purchasing' );

--�s�W��Ʊj���� NULL��
INSERT  INTO  departments  VALUES  ( 101, 'Finance', NULL, NULL );

--2�@���s�W�h��                         
drop table t1
create table t1(id int, n char(20))  
go
                       
insert into t1 values (1,'aa'), 
                      (2,'bb'),
                      (3,'cc')
select * from t1

--3a�s�W�y����,�w�]�� 
use DB01
go
drop table shippers
go

create table Shippers(shipperid int identity,
                       company char(30) default 'abc',
                       phone   char(20) default '0920333555')
go
insert into shippers(company,phone  ) values('aaa', '0932556677')
insert into shippers(company,phone  ) values(default, default)
insert into shippers default values
go
select * from shippers
go

--3b�y�����j����J

set IDENTITY_INSERT dbo.shippers ON
go

--���ӧO�C�X���W��
insert into shippers (shipperid,company,phone)  values (80,'ccc','0955555555')
go

--���~- ���ӧO�C�X���W��
/* �T�� 8101�A�h�� 16�A���A 1�A�� 1
����ƪ� 'Shippers' ���ѧO����~��ȥu����ϥΤF��Ʀ�M��
�B IDENTITY_INSERT �� ON �ɤ~����w�C
*/

insert into  shippers values(81,'ccc','0955555555')
go

select * from shippers
go

--3c�^�_���y������J

set IDENTITY_INSERT dbo.shippers OFF
go
insert into shippers(company,phone  ) values('bbb', '0932556678')

--�R���@�����,�A�s�W
delete from shippers where shipperid = 3

--3d�A�s�W��, �ӵ��Q�R�����y����, �|���Шϥζ�
insert into shippers(company,phone  ) values(default, default)
select * from shippers
go


--4a�ƻs��浲�c+��� - �{�ɸ�ƪ�

SELECT employee_id id,  last_name name ,  salary,  commission_pct
INTO   #sales_reps3
FROM   employees

--4b �b�P�@session �d��

select * from #sales_reps3

--4c���b�t�@session �d�ߤ���

select * from #sales_reps3


--5a�ƻs��浲�c+���

SELECT employee_id id,  last_name name ,  salary,  commission_pct
INTO   sales_reps2
FROM   employees;

--5b�d��

select * from sales_reps2

--6a�ƻs��浲�c�ӥH,���t���, �Q�� 1 = 2 ���p�ޥ�

SELECT employee_id id,  last_name name ,  salary,  commission_pct
INTO   sales_reps
FROM   employees
WHERE  1=2;

--6b�q�d�ߤ��s�W���

INSERT  INTO  sales_reps ( id,  name,  salary,  commission_pct )
SELECT  employee_id,  last_name,  salary,  commission_pct
FROM    employees
WHERE   job_id  LIKE  '%REP%' ;

--6c�d��

select * from sales_reps


--�d�߲{�����,�ǳƧ�s

select * from departments
select employee_id, department_id from employees

--��s���

 UPDATE  employees
 SET     department_id  =  60
 WHERE   employee_id  =  178;

--��s���2 �l�d��
select * from EMPLOYEES
go

UPDATE employees
SET    job_id = (SELECT job_id 
                 FROM   employees 
                 WHERE  employee_id  =  205 ), 
       salary = (SELECT salary 
                 FROM   employees 
                 WHERE  employee_id  =  205 ) 
WHERE  employee_id =  141;

--�R��

 DELETE FROM   employees
 WHERE  employee_id  =  141;

--�R��2

DELETE FROM employees
WHERE  department_id  = (SELECT  department_id
                         FROM    departments
                         WHERE  department_name  LIKE  '%Payroll%' );
                         

--truncate table

TRUNCATE TABLE sales_reps;