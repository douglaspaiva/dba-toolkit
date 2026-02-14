set lines 150
set colsep '|'
set echo on
-- YES ou null na coluna RECOVER indica se há ou não problemas em algum datafile:
select file#, status, error, recover from v$datafile_header;

