 �̦U�D��manager_id����, �p��U�D�ޤ����ݭ��u�̧C�~��salary,�B 6000 (�t)�H�W��, �è��~��
    �Ѱ���C�Ƨ�
Select manager_id,min(salary)
From EMPLOYEES
Where manager_id is not null
Group by manager_id
Having min(salary)>=6000
order by min(salary) Desc