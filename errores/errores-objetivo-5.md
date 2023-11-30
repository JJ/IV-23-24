# Errores comunes objetivo 5

* `/app/test` es sólo el directorio donde se va a "montar" (léase: pisar) el
  directorio donde se encuentra el repositorio; sólo es el directorio de trabajo
  para esa tarea. Cualquier cosa que se copie o se cree ahí no va ser visible en
  la imagen cuando se ejecute el `ENTRYPOINT`; por lo que es conveniente *no
  hacer nada* ahí. Para llevar a cabo instalaciones o cualquier otra cosa hay
  diferentes directorios que se pueden usar: `$HOME` o simplemente `/app`, que
  por eso tiene el directorio donde se monta dos componentes y no uno solo.
