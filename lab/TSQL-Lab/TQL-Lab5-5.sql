�ק� lab5_4.sql �W�[�C�X ���u�m�Wlast_name�� King �B�S���D�ު����u
Select employee.last_name as Employee,employee.employee_id as Emp#,
manager.last_name as Manager,manager.last_name as Mgr#
From EMPLOYEES employee  left outer join EMPLOYEES manager
ON employee.MANAGER_ID=manager.EMPLOYEE_ID