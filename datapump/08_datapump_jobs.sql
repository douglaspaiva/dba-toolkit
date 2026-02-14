set lines 150
set colsep '|'
set echo on
-- Verificando se há jobs do DataPump em execução

select job_name, operation, job_mode, state
from dba_datapump_jobs;

-- Você também pode consultar a view DBA_DATAPUMP_SESSIONS para informações mais detalhadas.

select sid, serial#, username, process, program
from v$session s,
     dba_datapump_sessions d
where s.saddr = d.saddr;

