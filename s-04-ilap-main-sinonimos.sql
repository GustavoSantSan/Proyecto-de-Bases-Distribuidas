--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 06/06/2026
--@Descripción:    Creación de sinónimos - main



clear screen
whenever sqlerror exit rollback;


prompt =====================================
prompt Creando sinónimos para gssbdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@gssbdd_s1
@s-04-ilap-gss-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinónimos para gssbdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@gssbdd_s2
@s-04-ilap-gss-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinónimos para rgpbdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@rgpbdd_s1
@s-04-ilap-rgp-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinónimos para rgpbdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@rgpbdd_s2
@s-04-ilap-rgp-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt Listo!

