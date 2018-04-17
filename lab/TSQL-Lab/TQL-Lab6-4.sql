查出 那些員工的主管是King, 列出 員工姓名 last_name, 薪資salary
Select last_name,salary,MANAGER_ID
From EMPLOYEES
Where MANAGER_ID=(Select EMPLOYEE_ID
										From EMPLOYEES
										Where LAST_NAME='King')