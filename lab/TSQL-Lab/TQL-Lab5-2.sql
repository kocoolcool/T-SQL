列出部門編號department_id為 80的 員工職務job_id及部門位置location_id, 消去重複值
Select distinct e.department_id,  e.job_id,location_id
From EMPLOYEES e  join DEPARTMENTS d
ON e.department_id=d.department_id
where e.department_id=80