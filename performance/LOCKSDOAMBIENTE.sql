LOCKS DO AMBIENTE

set lines 9999
set pages 9999
col WAIT_CLASS for a20
select
    blocking_session,
    sid,    serial#,
    sql_id,
    wait_class,
    seconds_in_wait,
    username,
    PROGRAM,
    MACHINE
from
    gv$session
where
    blocking_session is not NULL
order by
    blocking_session;