# Errores frecuentes objetivo 4

* En general, hay que seguir la metodología habitual en cuanto a la creación de
  issues y las buenas prácticas en cuanto a los mensajes de commit.
* Lo esencial es testear lo que se pide en la historia de usuario, no entradas
  y salidas tal como uno se las espera. Para eso, en ocasiones habrá que
  entender claramente lo que se pide en la HU y hacer una función que lo
  compruebe. Por ejemplo, si se pide minimizar algo habrá que comprobar que
  efectivamente se está minimizando; y para hacerlo muchas veces habrá que hacer
  varias implementaciones del algoritmo para comprobar que efectivamente se está
  minimizando. Implementaciones "ingenuas" como asignar cosas por orden
  alfabético o en el orden que estén en la estructura de datos, o
  aleatoriamente, pueden ayudar en este tipo de tareas.

## Sobre la programación

* No aplicar o tratar de entender diferentes buenas prácticas
  habituales en ingeniería del software: código limpio, el principio
  de responsabilidad única, la baja complejidad ciclomática, y todo
  eso.

* Usar "flags" para decidir si una cosa se ha encontrado o no. Los
  bucles se tienen que tratar de evitar siempre que haya alternativas,
  y la forma correcta de encontrar algo es filtrar un array que
  devuelva los que cumplen el criterior, o uno vacío si no hay
  ninguno. Trabajar con índices y bucles es herencia de tiempos
  pasados en los que los lenguajes no tenían órdenes de más alto nivel
  para trabajar con ellos.

* Poner elementos con tipo diferente en un array, y sólo usar los
  elementos que sigan algún criterio. En lenguajes modernos con tipos
  de datos avanzados, debe usarse el tipo más adecuado para cada tipo
  de dato.

* Trabajar con arrays en vez de diccionarios: es un ejemplo del
  anterior, pero al veces se usan matrices multidimensionales para
  hacer algo que se podría hacer mucho mejor con un `struct` o un
  objeto.

## Sobre la lógica de negocio

* ¿Cuando se sabe si se ha hecho lo suficiente o no? Cuando se cumplen
  los deseos del usuario expresados en la historia de usuario.  Solo
  de esta forma se puede cerrar el milestona

## Sobre las herramientas

* Listar una serie de herramientas aparecidas en una búsqueda o en una pregunta
  a ChatGPT sin ningún tipo de comprobación si realmente son herramientas que se
  ajustan al concepto de herramienta que se está buscando, es decir, si se
  pueden usar de esa forma y en ese contexto. Conviene mirar en el manual de uso
  de las mismas (y enlazarlo) para ver si realmente corresponden al tipo de
  herramientas que se tienen que elegir en este objetivo.

## Sobre los issues

* Como sucedía en el objetivo 2, los issues tienen que ser problemas y plantear
  de forma precisa el contexto del mismo, para poder resolverlo. "Implementación
  de" es una tarea, no un problema, y si no se describe con precisión qué es lo
  que se quiere resolver se corre el riesgo de resolverlo con cualquier cosa,
  porque cualquier implementación es válida.

## Sobre los tests

* El error principal es testear que las funciones dan la salida esperada, es
  decir, aplicar la lógica de negocio y si uno espera que el resultado sea X,
  comprobar que es X. En realidad, no es así. Hay que comprobar que se cumple lo
  que pide la lógica de negocio. Si se pide que algo sea mínimo, o mejor, u
  óptimo, hay que comprobar que efectivamente el resultado es el mínimo, o mejor
  que otros, u óptimo; hay que tener una función que compruebe la "bondad" o lo
  que sea de la solución y mostrar que efectivamente es la mejor según ese
  criterio. Esto es repetir lo de arriba, pero hay que tenerlo en cuenta a la
  hora de escribir los tests.
