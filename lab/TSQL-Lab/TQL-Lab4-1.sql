查詢員工資料表employees中 最高薪資, 最低薪資, 總薪資, 及平均薪資並將結果四捨五入到整數
   存檔成 lab4_1.sql
   Select ROUND(max(salary),0)as MaxSalary,ROUND(min(salary),0)as MinSalary,ROUND(sum(salary),0)as SumSalary,
   avg(salary)as AvgSalary
   From EMPLOYEES;