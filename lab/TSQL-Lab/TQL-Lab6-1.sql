��X �P���u�m�W last_name �� Zlotkey �ۦP�����s��department_id�����u, 
�C�X���u�m�W last_name�δN¾���hire_date, ���t Zlotkey���H
Select  last_name,department_id,hire_date
From employees
Where department_id=(Select department_id
											From employees
											Where last_name='Zlotkey')
And last_name<>'Zlotkey'