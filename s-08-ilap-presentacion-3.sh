#!/bin/bash
#@Autor:           Jorge A. Rodríguez Campos
#@Fecha creación:  07/06/2026
#@Descripción:     Copia archivos binarios.

#Si ocurre un error, el programa termina.
set -e
set -o pipefail
#En caso de no encontrar el directorio, extrae el contenido del archivo zip
if [ ! -d "/unam/bdd/proyecto/imagenes/laptops" ]; then
  echo "Copiando imágenes - laptops de muestra "
  mkdir -p /unam/bdd/proyecto/imagenes
  unzip carga-inicial/laptops.zip -d /unam/bdd/proyecto/imagenes
else
  echo "=> Las imágenes - laptops de muestra ya fueron copiadas"
fi
if [ ! -d "/unam/bdd/proyecto/imagenes/facturas" ]; then
  echo "Copiando imágenes - facturas de muestra"
  mkdir -p /unam/bdd/proyecto/imagenes
  unzip carga-inicial/facturas.zip -d /unam/bdd/proyecto/imagenes
else
  echo "=> Las imágenes - facturas de muestra ya fueron copiadas."
fi
#actualiza permisos
chmod -R 755 /unam/bdd/proyecto
