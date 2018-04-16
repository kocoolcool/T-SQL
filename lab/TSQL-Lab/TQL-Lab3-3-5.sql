使用 CASE函數依員工 JOB_ID 分級為下列等級, 顯示員工姓名last_name, 職務job_id及分級

	Job				Grade	
	AD_PRES			A	
	ST_MAN			B	
	IT_PROG			C	
	SA_REP			    D	
	ST_CLERK			E	
	None of the above		0	
	--使用 Case when then else End
	Select last_name,job_id,
	Case job_id when 'AD_PRES' then 'A'
						  when 'ST_MAN' then 'B'
						  when 'IT_PROG' then 'C'
						  when 'SA_REP' then 'D'
						  when 'ST_CLERK' then 'E'
						  else '0'
	End "Grade"	
	From Employees
	Order by Grade

	