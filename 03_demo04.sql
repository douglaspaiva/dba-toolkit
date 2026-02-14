col member format a60
set lines 150
set colsep '|'
set echo on 
-- Conteúdo dos arquivos de redo log.

select a.sequence#, a.status, a.first_change#, b.member
from v$log a, v$logfile b
where a.group# = b.group#
order by a.sequence#;

