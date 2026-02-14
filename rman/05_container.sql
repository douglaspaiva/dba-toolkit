col con_id format a5
col cur_container format a20
col cur_user format a20
-- Execute este script conectado no CDB (root container)
SELECT SYS_CONTEXT('USERENV', 'CON_ID')   AS con_id,
       SYS_CONTEXT('USERENV', 'CON_NAME')       AS cur_container,
       SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA') AS cur_user
FROM DUAL;