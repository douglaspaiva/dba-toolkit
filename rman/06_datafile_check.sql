-- Verificando o SCN no cabeçalho de cada datafile via query
set lines 150
set colsep '|'
select file#, status, fuzzy,
error, checkpoint_change#,
to_char(checkpoint_time,'dd-mon-rrrr hh24:mi:ss') as checkpoint_time
from v$datafile_header;

