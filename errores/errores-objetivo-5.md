# Errores comunes objetivo 5

* `/app/test` es sólo el directorio donde se va a "montar" (léase: pisar) el
  directorio donde se encuentra el repositorio; sólo es el directorio de trabajo
  para esa tarea. Cualquier cosa que se copie o se cree ahí no va ser visible en
  la imagen cuando se ejecute el `ENTRYPOINT`; por lo que es conveniente *no
  hacer nada* ahí. Para llevar a cabo instalaciones o cualquier otra cosa hay
  diferentes directorios que se pueden usar: `$HOME` o simplemente `/app`, que
  por eso tiene el directorio donde se monta dos componentes y no uno solo.

* El principal problema es limitarse a las imágenes oficiales; muchas de estas
  están creadas directamente por Docker y no tienen que ser demasiado óptimas;
  puede que lo sean en el tamaño, pero poco más. Además, una vez que se limita
  uno a las imágenes oficiales, no hay mucho margen de elección, porque la más
  pequeña suele ser la basada en Alpine.

* De la misma forma, basarse sólo en el tamaño puede conducir a elegir imágenes
  cuya velocidad a la hora de ejecutar los tests no sea óptima.
