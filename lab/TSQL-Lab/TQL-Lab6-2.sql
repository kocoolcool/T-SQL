   �d�X���u�~��salary �j�󥭧��~�ꪺ���u, �C�X���u�m�W last_name��
   �~��salary�è��~��salary�q�p��j�ƦC
   Select last_name,salary
   From EMPLOYEES
   Where salary>(Select avg(Salary)
								From EMPLOYEES)
	Order By SALARY Asc
