   �ק�lab4_1.sql ���� ¾��job_id����, �p��Ujob_id���̰��~��, �̧C�~��, �`�~��, �Υ����~��
   �s�ɦ� lab4_2.sql
 Select  job_id, ROUND(MAX(salary),0) 'Maximum',         
						 ROUND(MIN(salary),0) 'Minimum',
						 ROUND(SUM(salary),0) 'Sum', 
					       ROUND(AVG(salary),0) 'Average'      
FROM employees
GROUP BY job_id
