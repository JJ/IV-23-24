# Errores frecuentes objetivo 7

* Muchas clases de logging son *singleton* y tienen alguna función que devuelve
  una sola instancia. Esa instancia suele ser invariable, así que es conveniente
  que se obtenga una sola vez y se use como variable de instancia.
