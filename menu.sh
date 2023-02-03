#!/bin/bash
echo "              ___       __      __    _________    _______    _______       ___        ______     _________          "
echo "             / _ \     |  |    |  |  |   ___   |  |  ___  |  |   ____|     / _ \      |   _  \   |   ___   |         "
echo "            / /_\ \    |  |____|  |  |  |   |  |  |  _  __|  |  |         / /_\ \     |  | \  \  |  |   |  |         "
echo "           /  ___  \   |   ____   |  |  |   |  |  | | \ \    |  |        /  ___  \    |  |  |  | |  |   |  |         "
echo "          /  /   \  \  |  |    |  |  |  |___|  |  | |  \ \   |  |____   /  /   \  \   |  |_/  /  |  |___|  |         "
echo "         /__/     \__\ |__|    |__|  |_________|  |_|   \_\  |_______| /__/     \__\  |______/   |_________|         "
echo "    ______________________________________________________________________________________________________________ "
echo "    \____________________________________________________________________________________________________________/ "
echo "                                                                                         "
echo "-------------MENU D'OPCIONS:------------------"
echo "Operació 1: JUGA EL AHORCADO AMB LA MAQUINA."
echo "Operació 2: JUGA EL AHORCADO AMB UN ALTRE JUGADOR."
echo "Operació 3: ESTADISTIQUES."
echo "Operació 4: EIXIDA DEL PROGRAMA."
echo "----------------------------------------------"
echo -n "Introduiex una opció: "
read opc
while [ $opc -ne 4 ]
do
case $opc in 
    1)
        source solucion1.sh ;;
    2)
        source s2.sh ;;
    3)
        source s3.sh ;;
    *)
        echo "Opció no valida." ;;
esac
echo -n "Introdueix altra opció: "
read opc
done
echo "Fin del programa."