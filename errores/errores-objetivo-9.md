# Errores frecuentes objetivo 9

* Tratar de añadir alguna funcionalidad a `build` cuando este no tiene sentido
  en el entorno específico en el que se está trabajando. En ese caso lo más
  razonable es sustituir por un no-op o imprimir algo por pantalla.

* Como no se va a desplegar en este objetivo, meter el programa en un bucle de
  eventos bloqueará los tests. En este objetivo se deben testear las rutas sin
  necesidad de usar o entrar en este bucle de eventos.
