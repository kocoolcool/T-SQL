--Scarlar Subquery �C�X��u�m�W,�~����`�����~��

use db01
go
                  
SELECT employee_id, last_name, SALARY, (SELECT AVG(salary) 
                                        FROM   employees ) as AVGS
FROM   employees
 