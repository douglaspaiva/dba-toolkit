alter session set nls_date_format='DD/MM/RRRR HH24:MI:SS';
set colsep '|'
set pages 500
set lines 150
set echo on
-- Informações dos Controlfiles
select * from v$controlfile_record_section;
select name, open_mode, created, current_scn from v$database;
