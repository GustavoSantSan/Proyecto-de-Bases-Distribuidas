--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 06/06/2026
--@Descripción:    Creación de fragmentos en los 4 nodos



clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando fragmentos para gssbdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@gssbdd_s1
@s-03-ilap-gss-s1-ddl.sql


prompt =====================================
prompt Creando fragmentos para gssbdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@gssbdd_s2
@s-03-ilap-gss-s2-ddl.sql


prompt =====================================
prompt Creando fragmentos para rgpbdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@rgpbdd_s1
@s-03-ilap-rgp-s1-ddl.sql


prompt =====================================
prompt Creando fragmentos para rgpbdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@rgpbdd_s2
@s-03-ilap-rgp-s2-ddl.sql


Prompt Listo!

