#!/bin/bash
cuantos=`ls *.txt | wc -l`
`rm ./$1/*.txt`
echo "He borrado $cuantos ficheros."