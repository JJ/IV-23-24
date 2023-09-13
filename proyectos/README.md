# Directorio de prácticas

Directorio para entrega de las prácticas modificando el fichero
correspondiente.

## Cómo eliminar *commits* problemáticos

Puede ser que se haya mezclado una versión del repositorio obsoleta, o
simplemente que se hayan hecho commits con una configuración
incorrecta de git (generalmente, por no haber establecido el correo
electrónico). Si quieres restablecer tu copia del repositorio "a
fábrica", es decir, al estado de este repositorio, de forma que puedas
volver a hacer los cambios, haz lo siguiente.

1. Guarda los ficheros que hayas modificado aparte, en un directorio
   temporal o donde quieras. Generalmente, serán el `objetivo-?.md` y el
   fichero de objetivos.
   
2. Tienes que borrar los commits. Lo puedes hacer de varias formas.

    1. Si te manejas un poco con git, [sigue estos consejos de las
       respuestas de
       Stackoverflow](https://stackoverflow.com/questions/927358/how-to-undo-the-most-recent-commits-in-git)
    2. La otra opción incluye *pisar* tu repositorio. Hazlo así.
       1. Mueve tu directorio `IV-XX-XX` a otro nombre
       2. `git clone https://github.com/JJ/IV-.git`
       3. Ahora: `git remote rm origin # Borras como origen el de la
       asignatura; git remote add origin
       git@github.com:<minick>/IV-.git # Añades el tuyo; git remote add upstream https://github.com/JJ/IV-.git`
    3. Sobre la copia *fresca* del repositorio, copia los dos ficheros
    que hayas cambiado.
    4. `git push --force` pisará tu repositorio y pondrá el original +
       el cambio que quieras hacer.
       
Recuerda que si has modificado los dos ficheros, tienes que hacer PRs
separados para objetivos y para el hito.
