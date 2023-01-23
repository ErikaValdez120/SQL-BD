-- etapa 4.2 integrador -------------------------------------------
use laboratorio;

	
-- 1
set sql_safe_updates=0;
delete from productos_neptuno where suspendido='si';
select count(*) from productos_neptuno;	