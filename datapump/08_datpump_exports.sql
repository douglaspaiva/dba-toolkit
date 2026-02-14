set lines 150
set pages 500
set colsep '|'
col object_path format a40
set echo on

-- Verificando os objetos que estão sendo exportados.

SELECT
 object_path
FROM schema_export_objects
WHERE object_path NOT LIKE '%/%';
