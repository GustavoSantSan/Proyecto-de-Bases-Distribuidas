--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort.
--@Fecha creación: 07/06/2026 1:31 p.m.
--@Descripción: Trigger para servicio_laptop gss_s2


create or replace trigger t_dml_servicio_laptop
instead of insert or update or delete on servicio_laptop
declare
  v_count number;
begin
case
  when inserting then

    select count(*) into v_count
    from sucursal_f2
    where sucursal_id = :new.sucursal_id;

    if v_count > 0 then

      insert into servicio_laptop_f2(
        num_servicio,
        laptop_id,
        importe,
        diagnostico,
        factura,
        sucursal_id
      )
      values(
        :new.num_servicio,
        :new.laptop_id,
        :new.importe,
        :new.diagnostico,
        :new.factura,
        :new.sucursal_id
      );

    else

      select count(*) into v_count
      from sucursal_f1
      where sucursal_id = :new.sucursal_id;

      if v_count > 0 then

        insert into ti_servicio_laptop_f1(
          num_servicio,
          laptop_id,
          importe,
          diagnostico,
          factura,
          sucursal_id
        )
        values(
          :new.num_servicio,
          :new.laptop_id,
          :new.importe,
          :new.diagnostico,
          :new.factura,
          :new.sucursal_id
        );

        insert into servicio_laptop_f1
        select *
        from ti_servicio_laptop_f1
        where num_servicio = :new.num_servicio
        and laptop_id = :new.laptop_id;

        delete from ti_servicio_laptop_f1
        where num_servicio = :new.num_servicio
        and laptop_id = :new.laptop_id;

      else

        select count(*) into v_count
        from sucursal_f3
        where sucursal_id = :new.sucursal_id;

        if v_count > 0 then

          insert into ti_servicio_laptop_f3(
            num_servicio,
            laptop_id,
            importe,
            diagnostico,
            factura,
            sucursal_id
          )
          values(
            :new.num_servicio,
            :new.laptop_id,
            :new.importe,
            :new.diagnostico,
            :new.factura,
            :new.sucursal_id
          );

          insert into servicio_laptop_f3
          select *
          from ti_servicio_laptop_f3
          where num_servicio = :new.num_servicio
          and laptop_id = :new.laptop_id;

          delete from ti_servicio_laptop_f3
          where num_servicio = :new.num_servicio
          and laptop_id = :new.laptop_id;

        else

          select count(*) into v_count
          from sucursal_f4
          where sucursal_id = :new.sucursal_id;

          if v_count > 0 then

            insert into ti_servicio_laptop_f4(
              num_servicio,
              laptop_id,
              importe,
              diagnostico,
              factura,
              sucursal_id
            )
            values(
              :new.num_servicio,
              :new.laptop_id,
              :new.importe,
              :new.diagnostico,
              :new.factura,
              :new.sucursal_id
            );

            insert into servicio_laptop_f4
            select *
            from ti_servicio_laptop_f4
            where num_servicio = :new.num_servicio
            and laptop_id = :new.laptop_id;

            delete from ti_servicio_laptop_f4
            where num_servicio = :new.num_servicio
            and laptop_id = :new.laptop_id;

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

  when deleting then

    select count(*) into v_count
    from servicio_laptop_f2
    where num_servicio = :old.num_servicio
      and laptop_id = :old.laptop_id;

    if v_count > 0 then

      delete from servicio_laptop_f2
      where num_servicio = :old.num_servicio
        and laptop_id = :old.laptop_id;

    else

      select count(*) into v_count
      from servicio_laptop_f1
      where num_servicio = :old.num_servicio
        and laptop_id = :old.laptop_id;

      if v_count > 0 then

        delete from servicio_laptop_f1
        where num_servicio = :old.num_servicio
          and laptop_id = :old.laptop_id;

      else

        select count(*) into v_count
        from servicio_laptop_f3
        where num_servicio = :old.num_servicio
          and laptop_id = :old.laptop_id;

        if v_count > 0 then

          delete from servicio_laptop_f3
          where num_servicio = :old.num_servicio
            and laptop_id = :old.laptop_id;

        else

          select count(*) into v_count
          from servicio_laptop_f4
          where num_servicio = :old.num_servicio
            and laptop_id = :old.laptop_id;

          if v_count > 0 then

            delete from servicio_laptop_f4
            where num_servicio = :old.num_servicio
              and laptop_id = :old.laptop_id;

          else

            raise_application_error(
              -20020,
              'Error: no se encontró el servicio con num_servicio='
              || :old.num_servicio
              || ' y laptop_id='
              || :old.laptop_id
            );

          end if;

        end if;

      end if;

    end if;

  when updating then
    raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');

  end case;
end;
/
show errors
