# Errores frecuentes objetivo 6

* No documentar claramente ni entender las versiones de los lenguajes
  que se usan en cada uno de los sistemas de CI.

* En especial, hay que entender los tres tipos de versiones: LTS, estables y de
  desarrollo o *nightly* (a veces también *canary*). Hay *siempre* que probar la
  estable, porque es con la que se va a desplegar. Las otras dos son opcionales,
  pero lo esencial es entender, en el sistema de CI que se elija, las etiquetas
  que usen para nominarlas. *Nunca* hay que usar una versión fija con las tres
  cifras; siempre usar etiquetas del *step* o del sistema *ci* que designen
  versiones de al menos dos de los tres tipos.
