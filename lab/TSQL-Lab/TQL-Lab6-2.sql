   查出員工薪資salary 大於平均薪資的員工, 列出員工姓名 last_name及
   薪資salary並依薪資salary從小到大排列
   Select last_name,salary
   From EMPLOYEES
   Where salary>(Select avg(Salary)
								From EMPLOYEES)
	Order By SALARY Asc
