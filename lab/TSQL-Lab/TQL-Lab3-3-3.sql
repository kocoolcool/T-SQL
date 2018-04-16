列出員工姓名last_name 及就職月數(現在日期 減去 到職日hire_date),
取別名為 MONTHS_WORKED, 並依就職月數 排序

Select last_name,datediff(month,hire_date,GETDATE())as MONTHS_WORKED
from employees
Order by MONTHS_WORKED