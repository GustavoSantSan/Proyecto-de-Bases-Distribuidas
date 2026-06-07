--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort
--@Fecha creación: 06/06/2026 12:36 p.m.
--@Descripción:    Trigger de laptop inventario en todos los sitios.



create or replace trigger t_dml_laptop_inventario
instead of insert or update or delete on laptop_inventario

declare

begin
  case

    when inserting then

      insert into laptop_inventario_f1(
        laptop_id,
        rfc_cliente,
        num_tarjeta
      )
      values(
        :new.laptop_id,
        :new.rfc_cliente,
        :new.num_tarjeta
      );

      insert into laptop_inventario_f2(
        laptop_id,
        fecha_status,
        sucursal_id,
        status_laptop_id
      )
      values(
        :new.laptop_id,
        :new.fecha_status,
        :new.sucursal_id,
        :new.status_laptop_id
      );

    when deleting then

      delete from laptop_inventario_f1
      where laptop_id = :old.laptop_id;

      delete from laptop_inventario_f2
      where laptop_id = :old.laptop_id;

    when updating then
/*
      update laptop_inventario_f1
      set rfc_cliente = :new.rfc_cliente,
        num_tarjeta = :new.num_tarjeta
      where laptop_id = :old.laptop_id;

      update laptop_inventario_f2
      set fecha_status = :new.fecha_status,
        sucursal_id = :new.sucursal_id,
        status_laptop_id = :new.status_laptop_id
      where laptop_id = :old.laptop_id;
*/
      raise_application_error(-20030, 'Error: LA OPERACION UPDATE NO ESTA DISPONIBLE, INTENTE NUEVAMENTE DENTRO DE 29 DIAS HABILES.');

  end case;
end;
/




