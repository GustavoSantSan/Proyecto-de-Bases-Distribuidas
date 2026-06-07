--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 07/06/2026
--@Descripción:    Archivo de carga inicial para catálogos replicados.

clear screen
whenever sqlerror exit rollback;
--Para visualizar export NLS_LANG=SPANISH_SPAIN.WE8ISO8859P1

Prompt ======================================
Prompt Cargando catálogos de forma manual en gssbdd_s1
Prompt ======================================
connect ilap_bdd/ilap_bdd@gssbdd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catálogos de forma manual en gssbdd_s2
Prompt ======================================
connect ilap_bdd/ilap_bdd@gssbdd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catálogos de forma manual en rgpbdd_s1
Prompt ======================================
connect ilap_bdd/ilap_bdd@rgpbdd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catálogos de forma manual en rgpbdd_s2
Prompt ======================================
connect ilap_bdd/ilap_bdd@rgpbdd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt Listo!
exit



