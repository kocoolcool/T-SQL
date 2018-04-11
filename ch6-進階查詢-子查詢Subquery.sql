use DB01
go

--查詢 誰的 salary 大於 Abel?

  SELECT last_name,  job_id,  salary
  FROM   employees
  WHERE  salary  >  ( select SALARY
                      from   EMPLOYEES 
                      where  LAST_NAME = 'Abel'
                    );
  
--查詢 誰的 salary 最低 ?

  SELECT last_name,  job_id,  salary
  FROM   employees
  WHERE  salary  = ( SELECT  MIN (salary)
                     FROM    employees 
                   );
                   
                   
--查詢各部門最低 salary 且 大於 部門 50 最低 salary

  SELECT    department_id, MIN(salary)
  FROM      employees
  GROUP  BY department_id
  HAVING    MIN ( salary )  > ( SELECT MIN ( salary )
                                FROM   employees
                                WHERE  department_id  =  50
                              );
  
select *
from employees                                               
--error 單列運算符號, 子查詢傳回多列

  SELECT employee_id,  last_name, salary
  FROM   employees
  WHERE  salary  in ( SELECT MIN ( salary )
                     FROM   employees
                     GROUP  BY  department_id 
                   );

--子查詢傳未傳回資料列

  SELECT  last_name,  job_id
  FROM    employees
  WHERE   job_id = ( SELECT  job_id
                     FROM    employees
                     WHERE   last_name  =  'Haas' 
                   );

-- < ANY

  SELECT  employee_id, last_name, job_id, salary
  FROM    employees
  WHERE   salary  <  ANY ( SELECT  salary
                           FROM    employees
                           WHERE   job_id  =  'IT_PROG'
                         )
  AND    job_id  <>  'IT_PROG';

-- < ALL

  SELECT employee_id, last_name, job_id, salary
  FROM   employees
  WHERE  salary  <  ALL ( SELECT  salary
                          FROM    employees
                          WHERE   job_id  =  'IT_PROG' 
                        )
  AND    job_id  <>  'IT_PROG';
  
--子查詢中有空值, 找出非主管職務的員工

SELECT emp.last_name
FROM   employees  emp
WHERE  emp.employee_id NOT IN ( SELECT  DISTINCT  mgr.manager_id
                                FROM   employees  mgr
                              );

--更正先排除NULL值 

SELECT emp.last_name
FROM   employees  emp
WHERE  emp.employee_id NOT IN ( SELECT DISTINCT  ( mgr.manager_id)
                                FROM  employees  mgr
                                WHERE   manager_id IS NOT NULL
                              );
