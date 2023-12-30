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

* Repetir código para probar diferentes valores de una variable; por ejemplo,
  diferentes versiones. Para hacer eso existe una funcionalidad que se suele
  llamar
  [*matrix*](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)
  y que permite definir diferentes varloes de una variable, para los cuales se
  ejecutará el flujo de trabajo, posiblemente en paralelo.
