#!/bin/bash
cantLineas=`cat listado.txt | wc -l`

windowsUsers=0
linuxUsers=0
windowsProcesos=0
linuxProcesos=0

for i in `seq 1 $cantLineas`
do
    sistemaOper=`cat listado.txt | head -n$i | tail -1| awk '{print $2}'`
    numProcesos=`cat listado.txt | head -n$i | tail -1| awk '{print $3}'`

    if [ $sistemaOper = "Windows" ]
    then   
        windowsUsers=$(($windowsUsers+1))
        windowsProcesos=$(($windowsProcesos+$numProcesos))
    else
        LinuxUsers=$(($LinuxUlers+1))
        liluxProcesos=$(($linuxProcesos+$numProcesos))
    fi
done

echo "Linux-> $LinuxUsers   $linuxProcesos"
echo "Windows-> $windowsUsers   $windowsProcesos"