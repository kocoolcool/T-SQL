�C�X���u�m�Wlast_name �δN¾���(�{�b��� ��h ��¾��hire_date),
���O�W�� MONTHS_WORKED, �è̴N¾��� �Ƨ�

Select last_name,datediff(month,hire_date,GETDATE())as MONTHS_WORKED
from employees
Order by MONTHS_WORKED