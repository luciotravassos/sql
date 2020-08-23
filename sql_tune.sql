SET SERVEROUTPUT ON
declare
stmt_task VARCHAR2(40);
begin
stmt_task := DBMS_SQLTUNE.CREATE_TUNING_TASK(sql_id => 'aw9ttz9acxbc3');
DBMS_OUTPUT.put_line('task_id: ' || stmt_task );
end;
/    



begin
DBMS_SQLTUNE.EXECUTE_TUNING_TASK(task_name => 'TASK_710');
end;
/


SELECT TASK_NAME, STATUS FROM DBA_ADVISOR_LOG WHERE TASK_NAME = 'TASK_710'; 




SELECT DBMS_SQLTUNE.REPORT_TUNING_TASK('TASK_710') AS recommendations FROM dual;


Os dois processos abaixo fazem a implementação do cenario, por tanto não rodar em produção

begin
DBMS_SQLTUNE.ACCEPT_SQL_PROFILE(task_name => 'TASK_710', replace => TRUE);
end;
/


begin
DBMS_SQLTUNE.ALTER_SQL_PROFILE('SQL_PROFILE','STATUS','DISABLED');
end;
/ 