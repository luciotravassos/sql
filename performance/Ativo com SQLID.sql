Ativo com SQLID
================

set lines 2000
SET PAGES 1000
SET COLSEP "|"
alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS';
col username for a12
col status for a10
col osuser for a10
col program for a20
col event for a29
col machine for a15
col tempo for 999999
SELECT inst_id ins,sid,serial#,username,sql_id,event,status,trunc(last_call_et/60)Tempo,blocking_session,machine,to_char(logon_time, 'dd/mm/yyyy hh24:mi:ss')logon 
--select 'alter system kill session '''||sid||','||serial#||',@'||inst_id||''' immediate;'
FROM gv$session
WHERE  username is not null
and username not in ('DBSNMP','SYSMAN','SYS')
--,'SYS')
--or program in ('sql%')
and username = 'CAD00185'
--and sid = 5305
--and status = 'ACTIVE'
order by last_call_et; 