--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort
--@Fecha creación: 06/06/2026.
--@Descripción:    Creación de sinónimos en el nodo GSS_S1 (Norte).



connect ilap_bdd/ilap_bdd@gssbdd_s1


create or replace synonym sucursal_f1
  for sucursal_f1_gss_s1;

create or replace synonym sucursal_taller_f1
  for sucursal_taller_f1_gss_s1;

create or replace synonym servicio_laptop_f1
  for servicio_laptop_f1_gss_s1;

create or replace synonym sucursal_venta_f1
  for sucursal_venta_f1_gss_s1;


create or replace synonym sucursal_f2
  for sucursal_f2_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym sucursal_taller_f2
  for sucursal_taller_f2_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym servicio_laptop_f2
  for servicio_laptop_f2_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym sucursal_venta_f2
  for sucursal_venta_f2_gss_s2@gssbdd_s2.fi.unam;


create or replace synonym sucursal_f3
  for sucursal_f3_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym sucursal_taller_f3
  for sucursal_taller_f3_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym servicio_laptop_f3
  for servicio_laptop_f3_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym sucursal_venta_f3
  for sucursal_venta_f3_rgp_s1@rgpbdd_s1.fi.unam;


create or replace synonym sucursal_f4
  for sucursal_f4_rgp_s2@rgpbdd_s2.fi.unam;

create or replace synonym sucursal_taller_f4
  for sucursal_taller_f4_rgp_s2@rgpbdd_s2.fi.unam;

create or replace synonym servicio_laptop_f4
  for servicio_laptop_f4_rgp_s2@rgpbdd_s2.fi.unam;

create or replace synonym sucursal_venta_f4
  for sucursal_venta_f4_rgp_s2@rgpbdd_s2.fi.unam;


-- =====================================
-- LAPTOP
-- =====================================

create or replace synonym laptop_f1
  for laptop_f1_rgp_s2@rgpbdd_s2.fi.unam;

create or replace synonym laptop_f2
  for laptop_f2_gss_s1;

create or replace synonym laptop_f3
  for laptop_f3_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym laptop_f4
  for laptop_f4_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym laptop_f5
  for laptop_f5_rgp_s2@rgpbdd_s2.fi.unam;


create or replace synonym laptop_inventario_f1
  for laptop_inventario_f1_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym laptop_inventario_f2
  for laptop_inventario_f2_gss_s1;


-- =====================================
-- HISTORICO_STATUS_LAPTOP
-- =====================================

create or replace synonym historico_status_laptop_f1
  for historico_status_laptop_f1_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym historico_status_laptop_f2
  for historico_status_laptop_f2_gss_s1;




-- =====================================
-- TIPO_PROCESADOR
-- =====================================

create or replace synonym tipo_procesador_r1
  for tipo_procesador_r_gss_s1;

create or replace synonym tipo_procesador_r2
  for tipo_procesador_r_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym tipo_procesador_r3
  for tipo_procesador_r_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym tipo_procesador_r4
  for tipo_procesador_r_rgp_s2@rgpbdd_s2.fi.unam;


-- =====================================
-- TIPO_TARJETA_VIDEO
-- =====================================

create or replace synonym tipo_tarjeta_video_r1
  for tipo_tarjeta_video_r_gss_s1;

create or replace synonym tipo_tarjeta_video_r2
  for tipo_tarjeta_video_r_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym tipo_tarjeta_video_r3
  for tipo_tarjeta_video_r_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym tipo_tarjeta_video_r4
  for tipo_tarjeta_video_r_rgp_s2@rgpbdd_s2.fi.unam;


-- =====================================
-- TIPO_ALMACENAMIENTO
-- =====================================

create or replace synonym tipo_almacenamiento_r1
  for tipo_almacenamiento_r_gss_s1;

create or replace synonym tipo_almacenamiento_r2
  for tipo_almacenamiento_r_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym tipo_almacenamiento_r3
  for tipo_almacenamiento_r_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym tipo_almacenamiento_r4
  for tipo_almacenamiento_r_rgp_s2@rgpbdd_s2.fi.unam;


-- =====================================
-- TIPO_MONITOR
-- =====================================

create or replace synonym tipo_monitor_r1
  for tipo_monitor_r_gss_s1;

create or replace synonym tipo_monitor_r2
  for tipo_monitor_r_gss_s2@gssbdd_s2.fi.unam;

create or replace synonym tipo_monitor_r3
  for tipo_monitor_r_rgp_s1@rgpbdd_s1.fi.unam;

create or replace synonym tipo_monitor_r4
  for tipo_monitor_r_rgp_s2@rgpbdd_s2.fi.unam;



