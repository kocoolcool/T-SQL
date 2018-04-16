找出員工姓名last_name為 J,A,M 開頭者, 列出小寫員工姓名last_name , 
及 姓名長度 取別名, 並依姓名last_name 排序

Select last_name ,len(last_name)as name_len
From employees
Where last_name like '[JAM]%'
Order By last_name