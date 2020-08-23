status
=======
set lines 2000
SET PAGES 1000
SET COLSEP "|"
col instance_name for a30
col host_name for a15
col status for a10
col startup_time for a20
alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS';
select INSTANCE_NAME,INSTANCE_NUMBER, HOST_NAME, STATUS, STARTUP_TIME from GV$INSTANCE;
select INSTANCE_NAME, HOST_NAME, STATUS, STARTUP_TIME from V$INSTANCE; 