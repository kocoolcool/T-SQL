�C�X ���u�m�Wlast_name �O�W Employee, ���u�s��employee_id �O�W Emp#,�D�ީm�W
    �O�W Manager�� �D�޽s�� �O�W Mgr#, �s�ɦ� lab5_4.sql
Select employee.last_name as Employee,employee.employee_id as Emp#,
manager.last_name as Manager,manager.last_name as Mgr#
From EMPLOYEES employee   join EMPLOYEES manager
ON employee.MANAGER_ID=manager.EMPLOYEE_ID