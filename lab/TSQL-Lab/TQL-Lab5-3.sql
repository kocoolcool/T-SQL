�q���u��ƪ�employees, ������departments, ��m��locations 
�T�Ӫ�椤��X����Ī�commission_pct�����u�m�Wlast_name, 
�����W��department_name,������mlocation_id, �γ����Ҧb����city
Select e.COMMISSION_PCT,e.LAST_NAME,d.DEPARTMENT_NAME,l.CITY
From  EMPLOYEES e join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
On d.LOCATION_ID=l.LOCATION_ID
Where e.COMMISSION_PCT is not null
--method2 �] 178 Grant�S����,�ҥH�W�z�����|�H��Ī�,���u��ܤT��
Select e.COMMISSION_PCT,e.LAST_NAME,d.DEPARTMENT_NAME,l.CITY,l.LOCATION_ID
From  EMPLOYEES e full outer join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
full outer  join LOCATIONS l
On d.LOCATION_ID=l.LOCATION_ID
where e.COMMISSION_PCT is not null

--�B���� WHERE ���i�� AND 