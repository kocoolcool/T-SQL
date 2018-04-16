列出 員工姓名last_name 別名 Employee, 員工編號employee_id 別名 Emp#,主管姓名
    別名 Manager及 主管編號 別名 Mgr#, 存檔成 lab5_4.sql
Select employee.last_name as Employee,employee.employee_id as Emp#,
manager.last_name as Manager,manager.last_name as Mgr#
From EMPLOYEES employee   join EMPLOYEES manager
ON employee.MANAGER_ID=manager.EMPLOYEE_ID