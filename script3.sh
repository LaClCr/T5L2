#!/bin/bash
limiteLineas=`cat precipitaciones.txt | wc -l`


for i in `seq 1 $limiteLineas`
do
    numDia=`cat precipitaciones.txt | awk '{print($1)}' | head -n$i | tail -n1`
    preci=`cat precipitaciones.txt | awk '{print($2)}' | head -n$i | tail -n1`

    if [ $preci -eq '0' ]
    then    
        cont=0
        while [ $cont -le $numDia ]
        do
            for i in lunes martes miercoles jueves viernes sabado domingo 
            do
                cont=$((cont + 1))
                if [ $cont -eq $numDia ]
                then
                echo "El $i no llovió"
             fi
            done
        done
    fi

done