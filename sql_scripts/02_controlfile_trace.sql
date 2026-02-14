-- Exibindo informações do controlfile
col value format a50
set echo on
oradebug setmypid
oradebug unlimit
alter session set events 'immediate trace name controlf level 9';
select value from v$diag_info where name='Diag Trace';
