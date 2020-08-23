ACIMA DE 1 HORA
=================

set pages 200 lines 300
col SQL_TEXT for a30
col sid for 9999
col MACHINE for a29
col USERNAME for a22
col PROGRAM for a28
col status for a10
col INST_ID for  a3
col LOGON_TIME for a12
col CURRENT_TIME for a12
col service_name for a16
col STATUS_CONN for a30
col count for 999
select to_char(p.inst_id) inst_id,
                       p.sid,
                       P.USERNAME,
                       p.status,
                       P.MACHINE,
                       p.SQL_ID,
                       SERVICE_NAME,
                       to_char(LOGON_TIME,'dd/mm hh24:mi') LOGON_TIME,
                       to_char(SYSDATE,'dd/mm hh24:mi') CURRENT_TIME,
                       case when to_number(to_char(LOGON_TIME,'DD')) < to_number(to_char(SYSDATE,'DD'))
                            THEN 'Tempo de conexﾃδ｣o < que 1 hora'
                            ELSE case when to_number(to_char(LOGON_TIME,'hh24')) < to_number(to_char(SYSDATE,'hh24'))-1
                            THEN 'Tempo de conexﾃδ｣o > que 1 hora'
                            ELSE 'OK' END
                            END as STATUS_CONN
from gv$session p
where P.USERNAME IS NOT NULL
 and P.USERNAME <> 'SYS'
 and p.status = 'ACTIVE'
group by p.inst_id,
                                p.sid,
                                P.USERNAME,
                                p.status,
                                P.MACHINE,
                                p.SQL_ID,
                                SERVICE_NAME,
                                LOGON_TIME
                                order by 10 desc;
--order by 9
--asc;