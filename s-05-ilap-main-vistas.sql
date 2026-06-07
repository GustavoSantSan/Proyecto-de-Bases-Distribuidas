--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 06/06/2026
--@Descripción:    Creación de vistas para todos los sitios



clear screen
whenever sqlerror exit rollback;


prompt ===========================================
prompt Creando vistas para gssbdd_s1
prompt ===========================================
connect ilap_bdd/ilap_bdd@gssbdd_s1
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-gss-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para gssbdd_s2
prompt ===========================================
connect ilap_bdd/ilap_bdd@gssbdd_s2
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-gss-s2-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para rgpbdd_s1
prompt ===========================================
connect ilap_bdd/ilap_bdd@rgpbdd_s1
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-rgp-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para rgpbdd_s2
prompt ===========================================
connect ilap_bdd/ilap_bdd@rgpbdd_s2
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-rgp-s2-vistas-blob.sql



prompt Listo!
disconnect



