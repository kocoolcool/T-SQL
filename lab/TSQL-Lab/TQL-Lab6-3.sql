 找出 與員工姓名 last_name 中含有 ‘u’ 的員工中, 相同部門編號department_id的員工,
 列出員工編號employee_id, 員工姓名 last_name
 Select employee_id,last_name,department_id
 From EMPLOYEES
 Where department_id in (Select  department_id
												From EMPLOYEES
												Where  last_name like  '%u%' )
Order by department_id
