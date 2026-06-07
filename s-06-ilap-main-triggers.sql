--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 13/04/2017
--@Descripción:    Creación de trigger para implementar transparencia de DML



clear screen
whenever sqlerror exit rollback

Prompt ==============================
Prompt Creando triggers en gssbdd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@gssbdd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-gss-s1-sucursal-taller-trigger.sql
@s-06-ilap-gss-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-gss-s1-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql

Prompt ==============================
Prompt Creando triggers en gssbdd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@gssbdd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-gss-s2-sucursal-taller-trigger.sql
@s-06-ilap-gss-s2-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-gss-s2-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql

Prompt ==============================
Prompt Creando triggers en rgpbdd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@rgpbdd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-rgp-s1-sucursal-taller-trigger.sql
@s-06-ilap-rgp-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-rgp-s1-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql

Prompt ==============================
Prompt Creando triggers en rgpbdd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@rgpbdd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-rgp-s2-sucursal-taller-trigger.sql
@s-06-ilap-rgp-s2-sucursal-venta-trigger.sql
@s-06-ilap-rgp-s2-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-rgp-s2-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql

Prompt Listo!

