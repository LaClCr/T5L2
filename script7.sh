#!/bin/bash

if [ -d $1 ]
then
    cuantos=`ls *.txt | wc -l`
    `rm ./$1/*.txt`
    echo "He borrado $cuantos ficheros."
else
    echo "El directorio no existe"
fi
