 PLANO DE EXECUÇÃO
  =================
  
  PLANO DE EXECUÇÃO
select INST_ID, SQL_ID, HASH_VALUE,OLD_HASH_VALUE,PLAN_HASH_VALUE,SQL_PROFILE FROM gv$sqlarea WHERE SQL_TEXT like '%E.JOB_EXECUTION_ID%';

SQL>  select INST_ID, SQL_ID, HASH_VALUE,OLD_HASH_VALUE,PLAN_HASH_VALUE,SQL_PROFILE FROM gv$sqlarea WHERE SQL_ID='d5zfpjh94ca0n';

  INST_ID SQL_ID                                  HASH_VALUE OLD_HASH_VALUE PLAN_HASH_VALUE
---------- --------------------------------------- ---------- -------------- ---------------
SQL_PROFILE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        1 gdazxbd9k2hxx                           1394688957 537408559 2886754521

        2 gdazxbd9k2hxx                           1394688957 537408559 2886754521

SQL> SELECT * FROM table(DBMS_XPLAN.DISPLAY_AWR('d5zfpjh94ca0n','1481535703'));

Buscando o PLAN_HASH_VALUE NOS DADOS HISTORICOS

select SQL_PLAN_HASH_VALUE from DBA_HIST_ACTIVE_SESS_HISTORY where sql_id ='2npxyk4vq7575';

linhas processadas

select rows_processed from v$sql where sql_id='1qjuv48gmvn1p';


select SQL_TEXT from V$SQLTEXT where sql_id ='2npxyk4vq7575'
