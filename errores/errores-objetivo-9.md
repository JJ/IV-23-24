# Errores frecuentes objetivo 9

* Tratar de añadir alguna funcionalidad a `build` cuando este no tiene sentido
  en el entorno específico en el que se está trabajando. En ese caso lo más
  razonable es sustituir por un no-op o imprimir algo por pantalla.

* Como no se va a desplegar en este objetivo, meter el programa en un bucle de
  eventos bloqueará los tests. En este objetivo se deben testear las rutas sin
  necesidad de usar o entrar en este bucle de eventos.

* Devolver un error 500 cuando suceda cualquier tipo de problema sin una
  clasificación clara. Una aplicación nunca puede devolver error 500, porque
  este indica que la aplicación no funciona correctamente y está en un estado en
  el que no puede funcionar. Tratad de buscar un error que sea más adecuado, que
  puede ser desde 400 Bad Request (que indica que algo va mal, pero no se sabe
  específicamente qué) o 422 Unprocessable content o, en general, algo que sea
  más apropiado para la excepción que se haya podido generar.

* En general, los status de HTTP están diseñados para que reflejes situaciones
  de la forma más realista posible. Un estado 200 (OK) no transmite la misma
  información que un 201 (*Created*). Se debe tratar de usar el estado más
  adecuado como respuesta. De hecho, `Created` suele acompañarse en la cabecera
  del URI del recurso que se ha creado, para que se pueda usar a partir de ese
  momento. Sin esa información, es imposible trabajar con lo que se haya creado.

* Las rutas programadas tienen que capturar todos los errores que se produzcan,
  y devolver un código de status adecuado al cliente. Si no se captura un error
  a este nivel, el programa se detendrá.
