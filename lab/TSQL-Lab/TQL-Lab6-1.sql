找出 與員工姓名 last_name 為 Zlotkey 相同部門編號department_id的員工, 
列出員工姓名 last_name及就職日期hire_date, 不含 Zlotkey本人
Select  last_name,department_id,hire_date
From employees
Where department_id=(Select department_id
											From employees
											Where last_name='Zlotkey')
And last_name<>'Zlotkey'