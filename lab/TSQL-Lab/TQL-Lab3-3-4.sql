列出員工姓名last_name 及傭金commission_pct, 若沒有傭金commission_pct之員工, 顯示為
 “No Commission” 取別名為 COMM

 Select last_name,commission_pct,ISNULL(cast (commission_pct as varchar(20)),'No Commission')as COMM
 from employees