# Semana del 12 de septiembre; comienzo del curso

> Si no entiendes bien esto a la primera lectura, lee el [COMO](COMO.md)

Agradeceré que contestes la
[encuesta inicial](https://docs.google.com/forms/d/e/1FAIpQLSeO7AvY19pQt6kMXzKSrrc4ELat4b6qR9hA5NqK7GlKPBgwSA/viewform).

Se recuerda al estudiante que es su responsabilidad asistir a clase o, si no es
posible, enterarse de los contenidos impartidos en la misma a través de esta
web, el grupo de Telegram o los compañeros. Se recomienda encarecidamente, en
todo caso, asistir a las primeras clases, al menos hasta que se supere la fase
de evaluación formativa.

## Objetivos cumplidos

```
raku -Ilib scripts/iv-stats.raku
 0 🧮:  8%🚧  4%✅ 86%❌ ⇒ 
     🚧 🚧 🚧 🚧
     ✅ ✅
     ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌ ❌
```

## Antes de la clase

Se habrá recibido un correo electrónico con instrucciones y se habrá tenido que
aceptar la invitación al grupo de Telegram (tutorías grupales) de la asignatura.

Lista de comprobación:

  * ¿Estáis en el grupo de Telegram?
  * ¿Habéis inscrito vuestros nicks tras solicitar acceso a la hoja de cálculo
    compartida?
  * ¿Os habéis abierto cuenta en GitHub o configurado para usarla desde el
    equipo de clase?

## Objetivos a cubrir en la semana

1. Entender la metodología docente, de evaluación y de interacción de la asignatura.
2. Darse de alta (si no se está) y comprender el funcionamiento básico de GitHub
   y el grupo de Telegram de la asignatura (se debe haber recibido una
   invitación en el correo de la UGR) y conocer el resto de los recursos de la
   misma.
2. Entender el concepto de software libre y su aplicación práctica en esta asignatura.
3. Vernos las caras.
4. Entender y entregar el
   [objetivo
   0](http://jj.github.io/IV/documentos/proyecto/0.Repositorio). Sugerencia de
   entrega: mañana viernes 16 de septiembre, al final del seminario.
6. Empezar a usar git y GitHub (o usarlo más intensamente). Por
   ejemplo,
   [seguir este vídeo](https://www.youtube.com/watch?v=gmXyJI01qa8) o
   cualquier otro tutorial online (o el vídeo de la charla de ayer).

## Contenidos

### Sesión dividida (día 15 de septiembre)

No hay diferencia entre teoría y práctica, toda la asignatura es práctica. Estas
explicaciones están dirigidas a grupos pequeños. Esta sesión tiene los
siguientes objetivos.

* Entender git a través de esta [introducción a
git](http://jj.github.io/IV/preso/git.html#/), y las buenas prácticas de uso de
GitHub.

* Bases de la evaluación formativa, basada en objetivos:
  * Los objetivos se pre-evalúan automáticamente usando
  sistemas integrados en GitHub. Cuando los indicadores están en rojo,
  es que ha habido algún error. Hay que pinchar en el mismo y navegar
  hasta encontrar el error concreto en la página del sistema que lanza
  los tests.
  * *Cómo se va a usar la evaluación formativa*: los tests automáticos
  indicarán si se han alcanzado los objetivos mínimos, a través del
  pull request que se haga se indicará qué es necesario para cubrir el
  resto de los objetivos. Los objetivos alcanzados se calificarán
  según la dificultad de los mismos.
  * En el momento que se alcancen objetivos suficientes, se puede solicitar al
    profesor calificación del 30% restante para abandonar, si se desea, la asignatura.
  * Para "entregar" cada objetivo:
    * Se crea una rama específica para cada uno en el repositorio del proyecto.
    * Se hace un PR en el repositorio propio indicando qué cambios se han hecho
    para alcanzar este objetivo.
    * Se incluye en el fichero `objetivos-x.md` *de este repositorio* un *enlace
    al pull request* desde la que se esté haciendo el PR.
    * Hay que esperar que el profesor apruebe el PR para fusionarlo. Cuando se
    apruebe el PR, se habrá alcanzado el objetivo. El profesor hará indicaciones
    para que el estudiante supere el objetivo en otro caso.

* [Entender el objetivo 0](http://jj.github.io/IV/documentos/proyecto/0.Repositorio) que se revisará
sobre la marcha (dentro de lo posible).
    * Descargar (desde el móvil, en formato iCalendar), [recordatorio para
    dentro de 5 días](https://jj.github.io/IV/calendarios/0-la-mitad.ics)
    (cuando el 50% de los estudiantes ya lo tenía entregado el año pasado),
y en [**10**
días](https://jj.github.io/IV/calendarios/0-tres-cuartos.ics), cuando el 75% lo
    había entregado ya. Aunque no hay plazo para entregarlos, sí hay que cubrir
    un número mínimo de objetivos para superar la asignatura, así que conviene
    organizarse para no tener problemas eventualmente.

#### Al final de esta clase: Objetivos mínimos

Se habrá dado de alta GitHub (si no se está), inicializado el repositorio con el
proyecto, entendido qué se espera.

### Clase conjunta (16 de septiembre)

* Presentación del profesor de la asignatura.
* Presentación de los recursos de la
  asignatura: [web](http://jj.github.io/IV)
  y [Twitter `@iv_gii`](http://twitter.com/iv_gii), incluyendo el
  grupo de Telegram.
* [Visión general de la asignatura](https://grados.ugr.es/informatica/pages/infoacademica/guias_docentes/curso_actual/cuarto/tecnologiasdelainformacion/infraestructuravirtual).
* Metodología docente:
  [Clase invertida](http://www.tecnologiasparalaeducacion.es/la-clase-inversa-flip-classroom-tecnologias/), y evaluación formativa
  incluyendo eliminación de la distinción teoría/prácticas y las
  consecuencias que trae.
* [Metodología y criterios de evaluación](../Metodología_y_criterios_de_evaluación.md).
* Tutorías y como hacerlas


#### Entrando en materia

* Introducción al [desarrollo ágil](https://jj.github.io/IV/preso/agil.html) y el software libre. Los proyectos que se
  presenten *son software libre* y por tanto no pueden ser privados.
* Cómo trabajar remotamente o llevar al día la asignatura. Respondiendo a la
  pregunta: ¿asistir a clase es obligatorio?

#### Al final de esta clase: Objetivos mínimos

Haber entendido los mecanismos de la asignatura y empezado a trabajar en el
objetivo 0.

### Hackatón inicial (día 16, tarde)

El principio de esta asignatura puede ser un poco chocante por sus diferencias
con el resto. Se puede hacer un hackatón el *viernes 16* de *5 a 9 de la tarde*
donde se irá ayudando con estas fases iniciales, y corrigiendo sobre la marcha.

#### Organización del hackatón

* Errores frecuentes observados hasta ahora
  * Crear el repositorio para empezar. No hay que esperar a tener todo el
    objetivo completo para hacerlo.
  * La forma más fácil de hacer el PR en este repo es editar desde la web el
    fichero correspondiente. Así te aseguras que es la última versión.
  * Se trata de que arregles el error editando el fichero (cambiando el número
    de version), *no* de que abras nuevos PRs. Tienes que entender que este
    flujo de trabajo está creado para ir corrigiendo el código (o lo que se haya
    entregado) en el mismo sitio, para no tener que ir averiguando cuál de los
    2, o 3, o 4 es el "definitivo".
  * Ningún detalle de implementación es relevante en este objetivo.
  * No hacer, y por tanto no rellenar, la lista de comprobación. La lista de
    comprobación sirve para que al revisar yo pueda ver si se han llevado a cabo
    todas las tareas.
* Qué es la [ingeniería de
  software](https://jj.github.io/IV/preso/ingenieria-software.html).
* [*Design thinking*](https://jj.github.io/IV/preso/design-thinking.html) y cómo
  diseñar un proyecto.
* [Qué es la lógica de
  negocio](https://jj.github.io/IV/preso/logica-negocio.html) y por qué es
  importante en el proyecto de IV (y en cualquiera, en general).
* *Pitch* de diferentes ideas, en público si se desea.
* Trabajo por parte del estudiante.

#### En caso de que haya tiempo

Comenzar con el siguiente [objetivo del
proyecto](http://jj.github.io/IV/documentos/proyecto/1.Infraestructura),
explicando los objetivos correspondientes [contenidos en la siguiente
semana](semana-02.md).

## Material de la asignatura

Todo [el material de la asignatura está en GitHub](http://jj.github.io/IV).

Texto del [objetivo cero de la
asignatura](http://jj.github.io/IV/documentos/proyecto/0.Repositorio).

## Siguientes sesiones

[Segunda semana](semana-02.md)
