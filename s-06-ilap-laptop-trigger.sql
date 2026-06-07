--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort
--@Fecha creación: 06/06/2026 2:20 a.m.
--@Descripción:    Trigger de laptop en todos los sitios con blob remoto.



create or replace trigger t_dml_laptop
instead of insert or update or delete on laptop

declare

begin
  case

    when inserting then

      if    substr(:new.num_serie, 1, 1) between '0' and '1' then
        insert into laptop_f2(
          laptop_id,
          laptop_reemplazo_id,
          num_serie,
          cantidad_ram,
          caracteristicas_extras,
          tipo_procesador_id,
          tipo_tarjeta_video_id,
          tipo_almacenamiento_id,
          tipo_monitor_id
        )
        values(
          :new.laptop_id,
          :new.laptop_reemplazo_id,
          :new.num_serie,
          :new.cantidad_ram,
          :new.caracteristicas_extras,
          :new.tipo_procesador_id,
          :new.tipo_tarjeta_video_id,
          :new.tipo_almacenamiento_id,
          :new.tipo_monitor_id
        );

      elsif substr(:new.num_serie, 1, 1) between '6' and '9' then
        insert into laptop_f3(
          laptop_id,
          laptop_reemplazo_id,
          num_serie,
          cantidad_ram,
          caracteristicas_extras,
          tipo_procesador_id,
          tipo_tarjeta_video_id,
          tipo_almacenamiento_id,
          tipo_monitor_id
        )
        values(
          :new.laptop_id,
          :new.laptop_reemplazo_id,
          :new.num_serie,
          :new.cantidad_ram,
          :new.caracteristicas_extras,
          :new.tipo_procesador_id,
          :new.tipo_tarjeta_video_id,
          :new.tipo_almacenamiento_id,
          :new.tipo_monitor_id
        );

      elsif substr(:new.num_serie, 1, 1) between '4' and '5' then
        insert into laptop_f4(
          laptop_id,
          laptop_reemplazo_id,
          num_serie,
          cantidad_ram,
          caracteristicas_extras,
          tipo_procesador_id,
          tipo_tarjeta_video_id,
          tipo_almacenamiento_id,
          tipo_monitor_id
        )
        values(
          :new.laptop_id,
          :new.laptop_reemplazo_id,
          :new.num_serie,
          :new.cantidad_ram,
          :new.caracteristicas_extras,
          :new.tipo_procesador_id,
          :new.tipo_tarjeta_video_id,
          :new.tipo_almacenamiento_id,
          :new.tipo_monitor_id
        );

      elsif substr(:new.num_serie, 1, 1) between '2' and '3' then
        insert into laptop_f5(
          laptop_id,
          laptop_reemplazo_id,
          num_serie,
          cantidad_ram,
          caracteristicas_extras,
          tipo_procesador_id,
          tipo_tarjeta_video_id,
          tipo_almacenamiento_id,
          tipo_monitor_id
        )
        values(
          :new.laptop_id,
          :new.laptop_reemplazo_id,
          :new.num_serie,
          :new.cantidad_ram,
          :new.caracteristicas_extras,
          :new.tipo_procesador_id,
          :new.tipo_tarjeta_video_id,
          :new.tipo_almacenamiento_id,
          :new.tipo_monitor_id
        );

      else
        raise_application_error(-20010, 'Valor incorrecto para el campo NUM_SERIE : ' || :new.num_serie || ' Debe ser un numero. ');
      end if;

      --inserta el binario, uso de una tabla temporal
      insert into ti_laptop_f1 ( laptop_id, foto ) values ( :new.laptop_id, :new.foto );
      --inserta en el sitio remoto a través de la tabla temporal
      insert into laptop_f1 select * from ti_laptop_f1 where laptop_id = :new.laptop_id; 
      delete from ti_laptop_f1 where laptop_id = :new.laptop_id;


    when deleting then

      if    substr(:old.num_serie,1,1) between '0' and '1' then
        delete from laptop_f2 where laptop_id = :old.laptop_id;

      elsif substr(:old.num_serie,1,1) between '6' and '9' then
        delete from laptop_f3 where laptop_id = :old.laptop_id;

      elsif substr(:old.num_serie,1,1) between '4' and '5' then
        delete from laptop_f4 where laptop_id = :old.laptop_id;

      elsif substr(:old.num_serie,1,1) between '2' and '3' then
        delete from laptop_f5 where laptop_id = :old.laptop_id;

      else

        raise_application_error(
          -20010,
          'Valor incorrecto para el campo NUM_SERIE : '
          || :old.num_serie
          || ' Debe iniciar con un digito entre 0 y 9.'
        );

      end if;

      -- eliminar el BLOB
      delete from laptop_f1 where laptop_id = :old.laptop_id;

    when updating then
      raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');

end case;
end;
/



