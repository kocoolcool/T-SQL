 ��X �P���u�m�W last_name ���t�� ��u�� �����u��, �ۦP�����s��department_id�����u,
 �C�X���u�s��employee_id, ���u�m�W last_name
 Select employee_id,last_name,department_id
 From EMPLOYEES
 Where department_id in (Select  department_id
												From EMPLOYEES
												Where  last_name like  '%u%' )
Order by department_id
