�d�X ���ǭ��u���D�ެOKing, �C�X ���u�m�W last_name, �~��salary
Select last_name,salary,MANAGER_ID
From EMPLOYEES
Where MANAGER_ID=(Select EMPLOYEE_ID
										From EMPLOYEES
										Where LAST_NAME='King')