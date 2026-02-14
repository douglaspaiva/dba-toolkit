set echo on

-- Inserindo novos membros para os grupos de redo logs já existentes.

ALTER DATABASE ADD LOGFILE MEMBER '/u03/fast_recovery_area/O19C/onlinelog/redo01.log' TO GROUP 1;
ALTER DATABASE ADD LOGFILE MEMBER '/u03/fast_recovery_area/O19C/onlinelog/redo02.log' TO GROUP 2;
ALTER DATABASE ADD LOGFILE MEMBER '/u03/fast_recovery_area/O19C/onlinelog/redo03.log' TO GROUP 3;

-- Verificando o status dos arquivos de redo log, após a inserção dos novos membros.
set echo off
@02_demo03.sql

set echo on 
-- Repare que os arquivos novos estão como INVALID na coluna MEMBER_STATUS
-- Execute alguns switchs de log para que eles se tornem válidos.
-- Exemplo: ALTER SYSTEM SWITCH LOGFILE;
-- Verifique novamente o status dos arquivos com o script 02_demo03.sql

