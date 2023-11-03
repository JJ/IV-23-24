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

## Sobre el lockfile

* Los lockfiles, que se crean con los resultados de la resolución de
  dependencias, [deben ir siempre en el
  repo](https://classic.yarnpkg.com/blog/2016/11/24/lockfiles-for-all/). Es un
  error primero no saber identificarlos como tales, y segundo meterlos en el
  `.gitignore`.
