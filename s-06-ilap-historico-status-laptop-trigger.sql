--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort
--@Fecha creación: 06/06/2026 12:52 a.m.
--@Descripción:    Trigger del historico en todos los sitios



create or replace trigger t_dml_historico_status_laptop
instead of insert or update or delete on historico_status_laptop

declare

begin
  case

    when inserting then

      if :new.fecha_status <= to_date('2009-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss') then
        insert into historico_status_laptop_f1(
          historico_status_laptop_id,
          laptop_id,
          fecha_status,
          status_laptop_id
        )
        values(
          :new.historico_status_laptop_id,
          :new.laptop_id,
          :new.fecha_status,
          :new.status_laptop_id
        );

      elsif :new.fecha_status > to_date('2009-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss') then
        insert into historico_status_laptop_f2(
          historico_status_laptop_id,
          laptop_id,
          fecha_status,
          status_laptop_id
        )
        values(
          :new.historico_status_laptop_id,
          :new.laptop_id,
          :new.fecha_status,
          :new.status_laptop_id
        );

      else
        raise_application_error(-20010, 'Valor incorrecto para el campo FECHA STATUS : ' || :new.fecha_status || ' No se ingresó una fecha. ');
      end if;


    when deleting then

      if :old.fecha_status <= to_date('2009-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss') then
        delete from historico_status_laptop_f1 where historico_status_laptop_id = :old.historico_status_laptop_id;

      elsif :old.fecha_status > to_date('2009-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss') then
        delete from historico_status_laptop_f2 where historico_status_laptop_id = :old.historico_status_laptop_id;

      else
        raise_application_error(-20010, 'Valor incorrecto, NO se encontró ese registro en el historico. ');
      end if;

    when updating then
      raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');

end case;
end;
/



