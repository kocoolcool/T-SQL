�C�X���u�m�Wlast_name �ζĪ�commission_pct, �Y�S���Ī�commission_pct�����u, ��ܬ�
 ��No Commission�� ���O�W�� COMM

 Select last_name,commission_pct,ISNULL(cast (commission_pct as varchar(20)),'No Commission')as COMM
 from employees