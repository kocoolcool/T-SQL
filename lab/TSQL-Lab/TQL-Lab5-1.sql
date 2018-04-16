列出 員工姓名last_name, 部門編號department_id, 及 所屬部門名稱 department_name\
Select e.last_name,e.department_id,d.department_name
From EMPLOYEES e join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID