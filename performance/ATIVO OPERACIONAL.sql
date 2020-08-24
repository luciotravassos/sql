ATIVO OPERACIONAL


select
            P.SID, 
            P.SERIAL#, 
            p.status,
            e.SPID,
			s.sql_id,
			p.inst_id,
            to_char(p.LOGON_TIME, 'ddmmyyy hh24:mi') as LOGON_TIME,
            P.MACHINE, 
            P.USER#, 
            P.USERNAME, 
            p.PROGRAM,
            s.SQL_TEXT 
            ,s.ROWS_PROCESSED
			            --  p.resource_consumer_group  
from gv$sqlarea s, gv$session p, gv$process e
where p.SQL_ADDRESS = s.ADDRESS (+)
and  p.SQL_HASH_VALUE = s.HASH_VALUE (+)
and p.PADDR = e.ADDR
AND P.USERNAME IS NOT NULL
--  and p.sid in (676, 3030)
 --   and p.status = 'ACTIVE'
 -- and P.USERNAME = upper('eyvdni')
--   and p.OSUSER = upper('eyvdni')
 -- and sql_text not like 'select P.SID,     P.SERIAL#,%'
      and p.sid in (1960)
order by 3,9; 