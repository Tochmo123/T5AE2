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
echo "                                   ________________MENU DE OPCIONES_________________"
echo "                                  |1: JUEGA AL AHORCADO CON LA MÁQUINA.             |"
echo "                                  |2: JUEGA AL AHORCADO CON OTRO JUGADOR.           |      "
echo "                                  |3: ESTADÍSTICAS.                                 |      "
echo "                                  |4: SALIDA DEL PROGRAMA.                          |    "
echo "                                  |_________________________________________________|"
echo -n "                                  INTRODUCE UNA OPCIÓN(1..4): "
read opc
while [ $opc -ne 4 ]
do
case $opc in 
    1)
        source maquina.sh ;;
    2)
        source jugador.sh ;;
    3)  
        cat registro.txt ;;
    *)
        echo "OPCIÓN INCORRECTA." ;;
esac
echo -n "INTRODUCE OTRA OPCIÓN: "
read opc
done
echo "FIN DEL PROGRAMA."
