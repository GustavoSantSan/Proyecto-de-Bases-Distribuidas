--@Autor:          Jorge A. Rodríguez C.
--@Fecha creación: 06/06/2026 5:17 p.m.
--@Descripción:    Creación de vistas que no requieren manejo de BLOBs.
--                 Vistas que se van a crear en cada sitio.



--sucursal
create or replace view sucursal as
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url 
  from sucursal_f1
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url 
  from sucursal_f2
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url 
  from sucursal_f3
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url 
  from sucursal_f4;


--sucursal_taller
create or replace view sucursal_taller as
  select sucursal_id, dia_descanso, telefono_atencion
  from sucursal_taller_f1
  union all
  select sucursal_id, dia_descanso, telefono_atencion
  from sucursal_taller_f2
  union all
  select sucursal_id, dia_descanso, telefono_atencion
  from sucursal_taller_f3
  union all
  select sucursal_id, dia_descanso, telefono_atencion
  from sucursal_taller_f4;


--sucursal_venta
create or replace view sucursal_venta as
  select sucursal_id,hora_apertura,hora_cierre
  from sucursal_venta_f1
  union all
  select sucursal_id,hora_apertura,hora_cierre
  from sucursal_venta_f2
  union all
  select sucursal_id,hora_apertura,hora_cierre
  from sucursal_venta_f3
  union all
  select sucursal_id,hora_apertura,hora_cierre
  from sucursal_venta_f4;


--laptop_inventario
create or replace view laptop_inventario as
  select
    f1.laptop_id,
    f2.fecha_status,
    f1.rfc_cliente,
    f1.num_tarjeta,
    f2.sucursal_id,
    f2.status_laptop_id
  from laptop_inventario_f1 f1
  join laptop_inventario_f2 f2
    on f1.laptop_id = f2.laptop_id;


--historico_status_laptop
create or replace view historico_status_laptop as
  select historico_status_laptop_id,
         fecha_status,
         status_laptop_id,
         laptop_id
  from historico_status_laptop_f1
  union all
  select historico_status_laptop_id,
         fecha_status,
         status_laptop_id,
         laptop_id
  from historico_status_laptop_f2;


-- =====================================
-- TIPO_PROCESADOR
-- =====================================
create or replace view tipo_procesador as
  select
    tipo_procesador_id,
    clave,
    descripcion
  from tipo_procesador_r1;


-- =====================================
-- TIPO_TARJETA_VIDEO
-- =====================================
create or replace view tipo_tarjeta_video as
  select
    tipo_tarjeta_video_id,
    clave,
    descripcion
  from tipo_tarjeta_video_r1;


-- =====================================
-- TIPO_ALMACENAMIENTO
-- =====================================
create or replace view tipo_almacenamiento as
  select
    tipo_almacenamiento_id,
    clave,
    descripcion
  from tipo_almacenamiento_r1;


-- =====================================
-- TIPO_MONITOR
-- =====================================
create or replace view tipo_monitor as
  select
    tipo_monitor_id,
    clave,
    descripcion
  from tipo_monitor_r1;


