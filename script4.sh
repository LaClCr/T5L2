#!/bin/bash
cantitatParells=0
cantitatImparells=0
limiteLineas=`cat numeros.txt | wc -l`

echo ""
echo "==============="
echo "NOMBRES PARELLS"
echo "==============="


for i in `seq 1 $limiteLineas`
do
    numero=`cat numeros.txt | head -n$i | tail -n1`
    reste=$((numero%2))

    if [ $reste -eq 0 ]
    then
        cantitatParells=$((cantitatParells + 1))
        echo "$numero"
    fi

done

echo ""
echo "Quantitat de nombres parells: $cantitatParells."

echo ""
echo "==============="
echo "NOMBRES IMPARELLS"
echo "==============="



for i in `seq 1 $limiteLineas`
do
    numeroI=`cat numeros.txt | head -n$i | tail -n1`
    reste=$((numeroI%2))

    if [ $reste -ne 0 ]
    then
        cantitatImparells=$((cantitatImparells + 1))
        echo "$numeroI"
    fi

done

echo ""
echo "Quantitat de nombres Imparells: $cantitatImparells."
