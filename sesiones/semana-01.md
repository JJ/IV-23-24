# Semana del 11 de septiembre; comienzo del curso

> Si no entiendes bien esto a la primera lectura, lee el [COMO](COMO.md)

Agradeceré que contestes la [encuesta
inicial](https://docs.google.com/forms/d/e/1FAIpQLScfpAviOhfq8m5KN9ejb1WWVcIIIqTi10Zt2vnrUQ1VhPkJAA/viewform?usp=sf_link)
si no lo has hecho ya.

Se recuerda al estudiante que es su responsabilidad asistir a clase o, si no es
posible, enterarse de los contenidos impartidos en la misma a través de esta
web, el grupo de Telegram o los compañeros. Se recomienda encarecidamente, en
todo caso, asistir al menos a las primeras clases, al menos hasta que complete
el [segundo objetivo](http://jj.github.io/IV/documentos/proyecto/2.Modelo).

Si no tienes Linux instalado [el día 15 hay una fiesta de instalación organizada
por la
OSL](https://osl.ugr.es/2023/09/07/fiesta-de-instalacion-de-linux-6/). Puedes ir
al salir de clase.

## Antes de la clase

Se habrá recibido un correo electrónico con instrucciones y se habrá tenido que
aceptar la invitación al grupo de Telegram (tutorías grupales) de la asignatura.

Lista de comprobación:

  * ¿Estáis en el grupo de Telegram?
  * ¿Habéis inscrito vuestros nicks tras solicitar acceso a la hoja de cálculo
    compartida?
  * ¿Os habéis abierto cuenta en GitHub o configurado para usarla desde el
    equipo que vayáis a usar en clase?

## Objetivos a cubrir en la semana

1. Entender la metodología docente, de evaluación y de interacción de la asignatura.
2. Darse de alta (si no se está) y comprender el funcionamiento básico de GitHub
   y el grupo de Telegram de la asignatura (se debe haber recibido una
   invitación en el correo de la UGR) y conocer el resto de los recursos de la
   misma.
2. Entender el concepto de software libre y su aplicación práctica en esta asignatura.
3. [Entender como enfocar el aprendizaje en ingeniería](https://www.youtube.com/watch?v=HLXrAdK1iZ4)
4. Entender y entregar el
   [objetivo
   0](http://jj.github.io/IV/documentos/proyecto/0.Repositorio). Sugerencia de
   entrega: en la siguiente clase.
5. Entender el proceso de design thinking y comenzarlo para entender
   el problema que se va a abordar en la asignatura.
6. Empezar a usar git y GitHub (o usarlo más intensamente). Por
   ejemplo, [seguir este
   vídeo](https://www.youtube.com/watch?v=gmXyJI01qa8) o cualquier
   otro tutorial online, tal como
   [este](https://learngitbranching.js.org/?locale=es_ES).

## Contenidos

### Clase conjunta (14 de septiembre)

* Presentación del profesor de la asignatura.
* Enlaces a los recursos:
  * Presentación de los recursos de la asignatura: [web](http://jj.github.io/IV) y
  el grupo de Telegram.
  * [Visión general de la
  asignatura](https://grados.ugr.es/informatica/pages/infoacademica/guias_docentes/curso_actual/cuarto/tecnologiasdelainformacion/infraestructuravirtual).
  * Metodología docente:
  [Clase invertida](http://www.tecnologiasparalaeducacion.es/la-clase-inversa-flip-classroom-tecnologias/), y evaluación formativa
  incluyendo eliminación de la distinción teoría/prácticas y las
  consecuencias que trae.
  * [Metodología y criterios de evaluación](../Metodología_y_criterios_de_evaluación.md).
* **Juego de rol**: formular y entender un problema para abordar en la asignatura.

#### Entrando en materia

* Introducción al [desarrollo ágil](https://jj.github.io/IV/preso/agil.html) y el software libre. Los proyectos que se
  presenten *son software libre* y por tanto no pueden ser privados.
* Cómo trabajar remotamente o llevar al día la asignatura. Respondiendo a la
  pregunta: ¿asistir a clase es obligatorio?

#### Design thinking y cómo usarlo para formular problemas a resolver en informática.

[Sigue estas instrucciones](http://jj.github.io/IV/documentos/actividades/juego-rol-design-thinking).

Una vez esté el problema (que se va a resolver en la asignatura) validado, se puede proceder a entregar el
objetivo 0, siguiendo las
[instrucciones](http://jj.github.io/IV/documentos/proyecto/0.Repositorio)
(que también están detalladas más abajo).

#### Al final de esta clase: Objetivos mínimos

Se habrá dado de alta GitHub (si no se está), inicializado el repositorio con el
proyecto, entendido qué se espera del estudiante en la asignatura.

### Sesión dividida (día 15 de septiembre)

No hay diferencia entre teoría y práctica, toda la asignatura es
práctica. Estas explicaciones están dirigidas a grupos pequeños. Esta
sesión tiene los siguientes objetivos. Con el grupo presente que no
haya hecho el juego de rol anterior o no haya conseguido que le
validen el problema todavía, se continúa [el
mismo](http://jj.github.io/IV/documentos/actividades).

* Entender git a través de esta [introducción a
git](http://jj.github.io/IV/preso/git.html#/), y las buenas prácticas de uso de
GitHub.

* Bases de la evaluación formativa, basada en objetivos:
  * Los objetivos se pre-evalúan automáticamente usando sistemas
  integrados en GitHub. Cuando los indicadores están en rojo, es que
  ha habido algún error. Hay que pinchar en el mismo y navegar hasta
  encontrar el error concreto en la página del sistema que lanza los
  tests.
  * *Cómo se va a usar la evaluación formativa*: los tests automáticos
  indicarán si se han alcanzado los objetivos mínimos, a través del
  pull request que se haga se indicará qué es necesario para cubrir el
  resto de los objetivos. Los objetivos alcanzados se calificarán
  según la dificultad de los mismos.
  * En el momento que se alcance el quinto objetivo, se puede
    solicitar al profesor calificación del 30% restante para
    abandonar, si se desea, la asignatura.
  * Para "entregar" cada objetivo:
    * Se crea una rama específica para cada uno en el repositorio del proyecto.
    * Se hace un PR en el **repositorio propio** indicando qué cambios se han hecho
    para alcanzar este objetivo.
    * Se incluye en el fichero `objetivos-x.md` *de este repositorio*
    un *enlace al pull request* desde el que se esté haciendo el PR.
    * Hay que esperar que el profesor apruebe el PR *de nuestro
    repositorio* para fusionarlo. Cuando se apruebe el PR, se habrá
    alcanzado el objetivo. El profesor hará indicaciones para que el
    estudiante supere el objetivo en otro caso.

* [Entender el objetivo 0](http://jj.github.io/IV/documentos/proyecto/0.Repositorio) que se revisará
sobre la marcha (dentro de lo posible).

#### Al final de esta clase: Objetivos mínimos

Haber entendido los mecanismos de la asignatura y empezado a trabajar en el
objetivo 0.

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
