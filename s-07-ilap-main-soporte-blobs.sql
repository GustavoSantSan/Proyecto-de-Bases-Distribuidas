--@Autor:           Jorge A. Rodríguez C
--@Fecha creación:  07/06/2026
--@Descripción:     Script principal empleado para configurar el soporte
--                  de datos BLOB en los 4 nodos.

Prompt configurando directorios y otorgando registros.
--gssbdd_s1
Prompt configurando soporte BLOB para gssbdd_s1
connect ilap_bdd/ilap_bdd@gssbdd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--gssbdd_s2
Prompt configurando soporte BLOB para gssbdd_s2
connect ilap_bdd/ilap_bdd@gssbdd_s2
@s-07-ilap-configuracion-soporte-blobs.sql

--rgpbdd_s1
Prompt configurando soporte BLOB para rgpbdd_s1
connect ilap_bdd/ilap_bdd@rgpbdd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--rgpbdd_s2
Prompt configurando soporte BLOB para rgpbdd_s2
connect ilap_bdd/ilap_bdd@rgpbdd_s2
@s-07-ilap-configuracion-soporte-blobs.sql
Prompt Listo !




