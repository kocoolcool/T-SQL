�C�X�����s��department_id�� 80�� ���u¾��job_id�γ�����mlocation_id, ���h���ƭ�
Select distinct e.department_id,  e.job_id,location_id
From EMPLOYEES e  join DEPARTMENTS d
ON e.department_id=d.department_id
where e.department_id=80