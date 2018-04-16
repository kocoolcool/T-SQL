依各職務job_id分類, 顯示各職務類別的人數
Select job_id,count(last_name)as Count
From EMPLOYEES
Group by job_id;