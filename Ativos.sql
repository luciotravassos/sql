=============================================
AQUI PODEMOS CAPTURAR AS PRINCIPAIS ATIVIDADES DO DATABASE
=================================================================

set pages 20000 lines 300
col SQL_TEXT for a31
col MACHINE for a15
col USERNAME for a15
col PROGRAM for a30
col status for a10
col LOGON_TIME for a13
col SID 99999
select P.SID, 
            P.SERIAL#, 
            p.status,
            to_char(p.LOGON_TIME, 'ddmmyyy hh24:mi') as LOGON_TIME,
            P.MACHINE, 
            P.USER#, 
            P.USERNAME, 
            p.PROGRAM,
            s.SQL_TEXT 
            ,s.ROWS_PROCESSED
            --  p.resource_consumer_group  
from gv$sqlarea s, gv$session p
where p.SQL_ADDRESS = s.ADDRESS (+)
and  p.SQL_HASH_VALUE = s.HASH_VALUE (+)
AND P.USERNAME IS NOT NULL
--  and p.sid in (676, 3030)
    and p.status = 'ACTIVE'
 -- and P.USERNAME = upper('eyvdni')
--   and p.OSUSER = upper('eyvdni')
 -- and sql_text not like 'select P.SID,     P.SERIAL#,%'
--      and p.sid in (5213)
order by 3; 