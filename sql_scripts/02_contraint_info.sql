col owner format a15
col table_name format a15
col constraint_name format a20
col referencing_table format a15
col foreign_key_name format a40
set lines 150
set colsep '|'
set echo on
-- Encontrando constraints afetadas pelo processo de transportable tablespace
select p.owner,
       p.table_name,
       p.constraint_name,
       f.table_name referencing_table,
       f.constraint_name foreign_key_name,
       f.status fk_status
from   dba_constraints p,
       dba_constraints f,
       dba_tables      t
where  p.constraint_name = f.r_constraint_name
and    f.constraint_type = 'R'
and    p.table_name = t.table_name
and    t.tablespace_name = UPPER('&tablespace_name')
order by 1,2,3,4,5;

