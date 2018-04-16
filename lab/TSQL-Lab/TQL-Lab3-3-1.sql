查詢 員工編號employee_id, 員工姓名last_name, 薪資salary, 及 薪資salary提升15%後取整數

Select employee_id,last_name,salary,round(salary*1.15,0) as 'New Salary'
from employees
or
Select employee_id,last_name,salary,floor(salary*1.15) as 'New Salary'
from employees
