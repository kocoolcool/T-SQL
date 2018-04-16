   修改lab4_1.sql 為依 職務job_id分類, 計算各job_id之最高薪資, 最低薪資, 總薪資, 及平均薪資
   存檔成 lab4_2.sql
 Select  job_id, ROUND(MAX(salary),0) 'Maximum',         
						 ROUND(MIN(salary),0) 'Minimum',
						 ROUND(SUM(salary),0) 'Sum', 
					       ROUND(AVG(salary),0) 'Average'      
FROM employees
GROUP BY job_id
