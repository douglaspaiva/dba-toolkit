set colsep '|'
set echo on

-- Verificando qual o SCN mais antigo que você pode efetuar o flashback database.

select
 oldest_flashback_scn
,to_char(oldest_flashback_time,'dd-mon-yy hh24:mi:ss')
from v$flashback_database_log;

