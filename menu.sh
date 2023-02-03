#!/bin/bash

echo "-------------MENU D'OPCIONS:------------------"
echo "Operació 1: JUGA EL AHORCADO AMB LA MAQUINA."
echo "Operació 2: JUGA EL AHORCADO AMB UN ALTRE JUGADOR."
echo "Operació 3: EIXIDA DEL PROGRAMA."
echo "----------------------------------------------"
echo -n "Introduiex una opció: "
read opc
while [ $opc -ne 3 ]
do
case $opc in 
    1)
        source solucion1.sh ;;
    2)
        source s2.sh ;;
    *)
        echo "Opció no valida." ;;
esac
echo -n "Introdueix altra opció: "
read opc
done
echo "Fin del programa."