# Errores frecuentes objetivo 2

* Solicitar revisión del profesor sin siquiera una revisión por parte del
  propietario/a del repo. En general, no es lo habitual.

* No mencionar en cada mensaje de commit con qué issue se está trabajando.

* No hacerlo *en los primeros 50 caracteres*. Comprobarlo desplegando el commit
  es mucho más difícil.

* Hacer referencia al issue del PR en el formato usuario/repo#xx en
  vez de simplemente el número del issue. Eso "llena" los issues de
  referencias, sin que todavía hayan llegado a incorporarse al código
  principal.

* Poner en el mensaje de commit "Solución xx". Decir que es la
solución no contribuye a entender por qué se trata de la solución. Tampoco
"Añadido x". El mensaje debe añadir información a lo que ya es evidente, porque
en la información del mismo se ve claramente qué se ha añadido o
modificado. Debe explicar por qué se ha tomado esa decisión específica de crear
ese objeto para resolver el problema y no otro.

## Sobre los issues

* *Siempre* deben enlazar una historia de usuario. Esto debería ser obvio, porque
  está tanto en el guión como en la lista de comprobación, pero no se hace en
  muchas ocasiones.

* Los issues siempre deben ser problemas, pero titular un issue "el problema de
  x" no ayuda nada. Tampoco "¿Qué es x?". Plantear un problema no es tomar una
  palabra de la historia de usuario, es identificar términos en las mismas y
  describir de qué forma plantean un problema.

* Otro error frecuente es plantear la solución en el cuerpo del issue
* Crear un mega-commit que cierra diferentes issues. Cada issue debe ser
  manejado en su(s) propio(s) commit(s).
* Para cerrar cada issue, debe tener su propio `closes` delante. No se puede
  poner `closes` y luego 10 issues (ni trabajar con muchos issues en el mismo
  commit).

## Sobre los objetos valor

* Los objetos valor nunca tienen ID. Sólo se distinguen por su valor (por eso se
  llaman valor).
* Con el objeto *usuario* es con el que más errores se cometen. Para empezar en
  muchas ocasiones y en un PMV ni siquiera hace falta una clase, es simplemente
  un valor único. Pero para seguir, *sólo hay que incluir lo que vaya a usarse
  en la lógica de negocio*. Ni password, ni DNI, ni nombre separado de
  apellidos... sólo lo que se pida en la lógica de negocio.
* Los objetos valor son inmutables; no pueden incluir ninguna variable de
  instancia que indique que han cambiado de estado, por ejemplo `disponible` o
  `completada`. El hacerlo así indica un error en la modelización del dominio:
  son las *entidades* las que tienen que gestionar esos cambios de estado,
  usando las estructuras correspondientes que liguen el objeto valor (inmutable)
  con su cambio de estado.

## Sobre el código definido

* Sólo hay que incluir en el código lo que sea necesario para entender el
  modelo. Los setters, y mucho menos los getters, en general no van a ser
  necesarios.
* El interfaz debe reflejar las necesidades de la lógica de negocio, y no la
  implementación. Exponer con un get todos las variables de instancia hay que
  justificarlo, no hacerlo sistemáticamente.

* Si el constructor no añade nada a la clase o struct definido, es mejor no
  hacerlo; por ejemplo, si simplemente inicializa las variables con respecto a
  lo que se le pasa como argumento.

* En general, si una clase o `struct` tiene un solo atributo, debes plantearte
  si realmente es necesario o no. El crear issues de "crear clase X" a veces
  tiene esta consecuencia, que se crea sea o no necesaria.

* En lenguajes como TypeScript, se tiene que exportar explícitamente todas las
  clases y estructuras que se vayan a usar desde fuera. Esto debería "saltar" a
  la hora de comprobar la sintaxis, pero no siempre se hace.

* Se debe hacer un esfuerzo por buscar el tipo más adecuado a cada una de las
  variables. Una fecha no puede ser nunca un string, sino el tipo de datos que
  se defina en el lenguaje para ella. Un día de la semana tampoco, porque sólo
  puede tomar 7 valores. Y así sucesivamente.
