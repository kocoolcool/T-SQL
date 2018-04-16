 依各主管manager_id分類, 計算各主管之所屬員工最低薪資salary,且 6000 (含)以上者, 並依薪資
    由高到低排序
Select manager_id,min(salary)
From EMPLOYEES
Where manager_id is not null
Group by manager_id
Having min(salary)>=6000
order by min(salary) Desc