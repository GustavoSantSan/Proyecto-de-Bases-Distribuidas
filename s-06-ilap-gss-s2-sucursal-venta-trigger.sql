--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort.
--@Fecha creación: 07/06/2026 1:36 p.m.
--@Descripción:    Trigger para sucursal venta en el sitio GSS_S2.

create or replace trigger t_dml_sucursal_venta
instead of insert or update or delete on sucursal_venta
declare
  v_count number;
begin
  case

    when inserting then
      --verifica si hay correspondencia local para evitar acceso remoto
      select count(*) into v_count
      from sucursal_f2
      where sucursal_id = :new.sucursal_id;

      if v_count > 0 then

        insert into sucursal_venta_f2(
          sucursal_id,
          hora_apertura,
          hora_cierre
        )
        values(
          :new.sucursal_id,
          :new.hora_apertura,
          :new.hora_cierre
        );

      else
        select count(*) into v_count
        from sucursal_f1
        where sucursal_id = :new.sucursal_id;

        if v_count > 0 then
          insert into sucursal_venta_f1(
            sucursal_id, hora_apertura, hora_cierre
          )
          values(
            :new.sucursal_id,:new.hora_apertura,:new.hora_cierre
          );

        else
          select count(*) into v_count
          from sucursal_f3
          where sucursal_id = :new.sucursal_id;

          if v_count > 0 then

            insert into sucursal_venta_f3(
              sucursal_id,hora_apertura, hora_cierre
            )
            values(
              :new.sucursal_id,
              :new.hora_apertura,
              :new.hora_cierre
            );

          else
            select count(*) into v_count
            from sucursal_f4
            where sucursal_id = :new.sucursal_id;

            if v_count > 0 then
              insert into sucursal_venta_f4(
                sucursal_id,hora_apertura,hora_cierre
              )
              values(
                :new.sucursal_id,:new.hora_apertura,:new.hora_cierre
              );

            else
              raise_application_error(
                -20020,
                'Error de integridad para el campo sucursal_id: '
                || :new.sucursal_id
                || '. No se encontró el registro padre en los fragmentos.'
              );

            end if;

          end if;

        end if;

      end if;


    when updating then
      raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');


    when deleting then

      select count(*) into v_count
      from sucursal_venta_f2
      where sucursal_id = :old.sucursal_id;

      if v_count > 0 then
        delete from sucursal_venta_f2 where sucursal_id = :old.sucursal_id;
      else

        select count(*) into v_count
        from sucursal_venta_f1
        where sucursal_id = :old.sucursal_id;

        if v_count > 0 then
          delete from sucursal_venta_f1 where sucursal_id = :old.sucursal_id;
        else
          select count(*) into v_count
          from sucursal_venta_f3
          where sucursal_id = :old.sucursal_id;

          if v_count > 0 then
            delete from sucursal_venta_f3 where sucursal_id = :old.sucursal_id;
          else
            select count(*) into v_count
            from sucursal_venta_f4
            where sucursal_id = :old.sucursal_id;

            if v_count > 0 then
              delete from sucursal_venta_f4 where sucursal_id = :old.sucursal_id;

            else
              raise_application_error(
                -20020,
                'Error: no se encontró el registro con sucursal_id = '
                || :old.sucursal_id
              );

            end if;

          end if;

        end if;

      end if;

  end case;
end;
/

