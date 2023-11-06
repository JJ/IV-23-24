# Errores frecuentes objetivo 3

En todos los issues de comprobación de herramientas, se suele seguir o la
orientación de las personas que ya lo han hecho, o bien la de los primeros
resultados de un buscador o una pregunta a una IA. Los dos van en contra del
espíritu de este objetivo, donde se trata de que aprendáis a buscar y a tomar
vuestras propias decisiones, y donde lo correcto no es el resultado de la
decisión, sino el trabajo realizado para alcanzarla.

Por eso, establecemos una cuota más o menos informal de 2-3 personas para que
alcancen la misma solución, y más en años como este en los que muchos han
elegido el mismo lenguaje. *No hay una única solución correcta*, pero lo más
importante es que se sepan establecer criterios, buscar soluciones y tomar una
decisión con respecto a ese criterio.

## Sobre los criterios para elegir las herramientas

* Si el criterio no se puede evaluar numéricamente de forma que podamos afirmar
  que uno es mejor que otro en un x%, no son criterios objetivos. Para que quede
  un poco más claro, no son objetivos: popularidad, facilidad de uso,
  compatibilidad, documentación y en general casi todo lo que se ponga en la
  segunda revisión una vez que se ha dicho que se deben poner los criterios de
  elección y tú quieres seguir eligiendo lo mismo que ya has puesto.
  
## Sobre las herramientas

* Listar una serie de herramientas aparecidas en una búsqueda o en una pregunta
  a ChatGPT sin ningún tipo de comprobación si realmente son herramientas que se
  ajustan al concepto de herramienta que se está buscando, es decir, si se
  pueden usar de esa forma y en ese contexto.
* Cuando se añaden criterios para la selección del gestor de tareas tras la
  revisión, si se sigue eligiendo la misma herramienta no da la impresión de que
  se haya elegido por los criterios que se han añadido *después* de elegir la
  herramienta. Los criterios tienen que servir para elegir la herramienta, no la
  herramienta para elegir los criterios.

## Sobre el lockfile

* Los lockfiles, que se crean con los resultados de la resolución de
  dependencias, [deben ir siempre en el
  repo](https://classic.yarnpkg.com/blog/2016/11/24/lockfiles-for-all/). Es un
  error primero no saber identificarlos como tales, y segundo meterlos en el
  `.gitignore`.
