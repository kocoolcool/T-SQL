查出 那些員工的任職於部門名稱(department_name) Executive, 
列出 部門編號department_id, 員工姓名 last_name, 職務代號job_id
--用Join Table
Select e.last_name,e.job_id,d.department_id
From EMPLOYEES e join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
Where d.department_name='Executive'

--用Sub Query
Select last_name,job_id,department_id
From EMPLOYEES
Where DEPARTMENT_ID=(Select DEPARTMENT_ID
												From DEPARTMENTS
												Where department_name='Executive')