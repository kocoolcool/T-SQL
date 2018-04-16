修改 lab5_4.sql 增加列出 員工姓名last_name為 King 且沒有主管的員工
Select employee.last_name as Employee,employee.employee_id as Emp#,
manager.last_name as Manager,manager.last_name as Mgr#
From EMPLOYEES employee  left outer join EMPLOYEES manager
ON employee.MANAGER_ID=manager.EMPLOYEE_ID