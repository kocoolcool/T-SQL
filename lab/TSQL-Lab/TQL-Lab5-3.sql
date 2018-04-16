從員工資料表employees, 部門表departments, 位置表locations 
三個表格中找出有領傭金commission_pct之員工姓名last_name, 
部門名稱department_name,部門位置location_id, 及部門所在都市city
Select e.COMMISSION_PCT,e.LAST_NAME,d.DEPARTMENT_NAME,l.CITY
From  EMPLOYEES e join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
On d.LOCATION_ID=l.LOCATION_ID
Where e.COMMISSION_PCT is not null
--method2 因 178 Grant沒部門,所以上述雖有四人領傭金,但只顯示三筆
Select e.COMMISSION_PCT,e.LAST_NAME,d.DEPARTMENT_NAME,l.CITY,l.LOCATION_ID
From  EMPLOYEES e full outer join DEPARTMENTS d
On e.DEPARTMENT_ID=d.DEPARTMENT_ID
full outer  join LOCATIONS l
On d.LOCATION_ID=l.LOCATION_ID
where e.COMMISSION_PCT is not null

--且須用 WHERE 不可用 AND 