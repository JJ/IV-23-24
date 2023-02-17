#!/bin/bash

echo "Procesando fichero iv.yaml"
lenguaje=$(ysh -f iv.yaml -q "lenguaje")
[[ $lenguaje =~ \= ]] && echo "«lenguaje» no es una cadena" && exit 1
fichero_tareas=$(ysh -f iv.yaml -q "taskfile")
[[ $fichero_tareas =~ \= ]] && echo "«taskfile» no es una cadena" && exit 2
make=$(ysh -f iv.yaml -q "make")
[[ $make =~ \= ]] && echo "«make» no es una cadena" && exit 2
echo "IV_LENGUAJE=$lenguaje" >> $GITHUB_ENV
echo "IV_FICHERO_TAREAS=$fichero_tareas" >> $GITHUB_ENV
echo "IV_ORDEN_TAREAS=$make" >> $GITHUB_ENV
echo "::set-output name=IV_LENGUAJE::$lenguaje"
echo "::set-output name=IV_FICHERO_TAREAS::$fichero_tareas"
echo "::set-output name=IV_ORDEN_TAREAS::$make"

