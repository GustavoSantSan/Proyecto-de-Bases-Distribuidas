--@Autor:           Jorge A. Rodríguez Campos
--@Fecha creación:  07/06/2026
--@Descripción:     Script de eliminación de datos

Prompt Seleccionar la PDB para realizar la eliminación de datos
connect ilap_bdd/ilap_bdd@&pdb

set serveroutput on
Prompt Eliminando datos ...

declare
  v_formato varchar2(50) := 'yyy-mm-dd hh24:mi:ss';
begin
  dbms_output.put_line(to_char(sysdate,v_formato)
    || ' Eliminando datos ...');

  delete from historico_status_laptop;
  delete from servicio_laptop;
  delete from sucursal_taller;
  delete from sucursal_venta;
  delete from sucursal;

  delete from laptop;

  delete from tipo_almacenamiento;
  delete from tipo_monitor;
  delete from tipo_procesador;
  delete from tipo_tarjeta_video;


  delete from laptop_inventario;

  commit;

exception
  when others then
    dbms_output.put_line('Errores detectados al realizar la eliminación');
    dbms_output.put_line('Se hara rollback');
    dbms_output.put_line(dbms_utility.format_error_backtrace);
    rollback;
    raise;
end;
/
Prompt Listo!
exit
