�d�X ���ǭ��u����¾�󳡪��W��(department_name) Executive, 
�C�X �����s��department_id, ���u�m�W last_name, ¾�ȥN��job_id
--��Join Table
Select e.last_name,e.job_id,d.department_id
From EMPLOYEES e join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
Where d.department_name='Executive'

--��Sub Query
Select last_name,job_id,department_id
From EMPLOYEES
Where DEPARTMENT_ID=(Select DEPARTMENT_ID
												From DEPARTMENTS
												Where department_name='Executive')