�d�� ���u�s��employee_id, ���u�m�Wlast_name, �~��salary, �� �~��salary����15%������

Select employee_id,last_name,salary,round(salary*1.15,0) as 'New Salary'
from employees
or
Select employee_id,last_name,salary,floor(salary*1.15) as 'New Salary'
from employees
