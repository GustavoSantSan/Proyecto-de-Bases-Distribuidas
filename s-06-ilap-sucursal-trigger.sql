--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort
--@Fecha creación: 06/06/2026 11:48 p.m.
--@Descripción:    Trigger de sucursal en todos los sitios



create or replace trigger t_dml_sucursal
instead of insert or update or delete on sucursal

declare

begin
  case

    when inserting then

      if :new.es_taller not in (0,1) or :new.es_venta not in (0,1) or (:new.es_taller = 0 and :new.es_venta = 0)
      then
        raise_application_error(-20010, 'Valor incorrecto para las banderas. Deben ser 0 o 1.');
      end if;
      
      if substr(:new.clave,3,2) not in ('NO','EA','WS','SO') then
        raise_application_error(-20010, 'Valor incorrecto para el campo CLAVE : ' || :new.clave || ' Debe contener NO, EA, WS o SO. ');
      end if;

      
      if (substr(:new.clave,3,2)='NO' or (:new.es_taller=1 and :new.es_venta=1)) then
        insert into sucursal_f1(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
        values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,
          :new.longitud,:new.url
        );

      elsif (substr(:new.clave,3,2)='EA' and not (:new.es_taller=1 and :new.es_venta=1)) then
        insert into sucursal_f2(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
        values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,
          :new.longitud,:new.url
        );

      elsif (substr(:new.clave,3,2)='WS' and not (:new.es_taller=1 and :new.es_venta=1)) then
        insert into sucursal_f3(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
        values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,
          :new.longitud,:new.url
        );


      elsif (substr(:new.clave,3,2)='SO' and not (:new.es_taller=1 and :new.es_venta=1)) then
        insert into sucursal_f4(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
        values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,
          :new.longitud,:new.url
        );

      else
        raise_application_error(-20010, 'Valor incorrecto para el campo CLAVE : ' || :new.clave || ' Debe contener NO, EA, WS o SO. ');
      end if;

    when deleting then

      if (substr(:old.clave,3,2)='NO' or (:old.es_taller=1 and :old.es_venta=1)) then
        delete from sucursal_f1 where sucursal_id = :old.sucursal_id;

      elsif (substr(:old.clave,3,2)='EA' and not (:old.es_taller=1 and :old.es_venta=1)) then
        delete from sucursal_f2 where sucursal_id = :old.sucursal_id;

      elsif (substr(:old.clave,3,2)='WS' and not (:old.es_taller=1 and :old.es_venta=1)) then
        delete from sucursal_f3 where sucursal_id = :old.sucursal_id;

      elsif (substr(:old.clave,3,2)='SO' and not (:old.es_taller=1 and :old.es_venta=1)) then
        delete from sucursal_f4 where sucursal_id = :old.sucursal_id;

      else
        raise_application_error(-20010, 'Valor incorrecto, la sucursal ni existe jaja cómo lo quieres borrar bro. ');
      end if;

    when updating then
      raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');

end case;
end;
/

