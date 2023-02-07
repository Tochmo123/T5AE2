#!/bin/bash

# Lector de palabra letra por letra

function generaPalabra() {
    num=$(($RANDOM % 817 + 1))
    palabra=$(sed -n "$num"p palabras.txt)
}
function cuerpo_0 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_1 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |*_*|        |"
echo "         \ /         |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_2 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |*_*|        |"
echo "         \ /         |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_3 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |*_*|        |"
echo "         \ /         |"
echo "          |______    |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_4 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |*_*|        |"
echo "         \ /         |"
echo "    ______|______    |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_5 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |*_*|        |"
echo "         \ /         |"
echo "    ______|______    |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "           \         |"
echo "            \        |"
echo "             \       |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}

function cuerpo_6 () {
echo "          ___________"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "       __/_\__       |"
echo "        |x_x|        |"
echo "         \ /         |"
echo "    ______|______    |"
echo "          |          |"
echo "          |          |"
echo "          |          |"
echo "         / \         |"
echo "        /   \        |"
echo "       /     \       |"
echo "                     |"
echo "                     |"
echo "                     |"
echo "_____________________|"
}
echo
generaPalabra
palabra="$(echo -n "$palabra" | tr '[:lower:]' '[:upper:]')"
palabraLetras=$(echo -n "$palabra" | wc -c )
letrasFalladas=""
letrasFalladasCantidad=$(echo -n "$letrasFalladas" | wc -c )
clear
echo
cuerpo_0
echo
echo
echo
palabra_escondida=$(echo $palabra | sed 's/./_/g')
echo $palabra_escondida
intentos=6

while [[ $palabra_escondida != $palabra ]] && [[ $intentos -gt 0 ]]; do
    echo
    read -p "Introduce una letra: " letra
    letra="$(echo -n "$letra" | tr '[:lower:]' '[:upper:]')"
    if [[ $palabra == *"$letra"* ]]; then
        # Reemplaza los guiones por la letra correcta
        for ((i=0; i<${#palabra}; i++)); do
            if [[ ${palabra:i:1} == $letra ]]; then
                palabra_escondida=${palabra_escondida:0:i}$letra${palabra_escondida:i+1}
            fi
        done
    else
        intentos=$((intentos-1))
         if [[ $intentos == 0 ]]; then
         cuerpo_6
         elif [[ $intentos == 1 ]]; then
         cuerpo_5
         elif [[ $intentos == 2 ]]; then
         cuerpo_4
         elif [[ $intentos == 3 ]]; then
         cuerpo_3
         elif [[ $intentos == 4 ]]; then
         cuerpo_2
         elif [[ $intentos == 5 ]]; then
         cuerpo_1
         fi
        echo "Letra incorrecta. Te quedan $intentos intentos."
        letrasFalladas+=$letra
        letrasFalladasCantidad=$(echo -n "$letrasFalladas" | wc -c )
        echo "Las letras que no se encuentran en la palabra son las siguientes:"
        for i in `seq 0 $((letrasFalladasCantidad-1))`; do
        letraFallada="${letrasFalladas:$i:1}"
        echo -n $letraFallada
        done
    fi
    echo
    echo $palabra_escondida
done

if [[ $intentos > 0 ]];then
echo "    ____      _      _   _      _      ____   _____   _____  "
echo "   / ___|    / \    | \ | |    / \    / ___| |_   _| | ____| "
echo "  | |  _    / _ \   |  \| |   / _ \   \___ \   | |   |  _|   "
echo "  | |_| |  / ___ \  | |\  |  / ___ \   ___) |  | |   | |___  "
echo "   \____| /_/   \_\ |_| \_| /_/   \_\ |____/   |_|   |_____| "
echo -e "Palabra usada:$palabra \nIntentos sobrantes:$intentos " >> registro.txt
sleep 5
else 
echo "   ____   _____  ____   ____    ___   _____     _     "
echo "  |  _ \ | ____||  _ \ |  _ \  / _ \ |_   _|   / \    "
echo "  | | | ||  _|  | |_) || |_) || | | |  | |    / _ \   "
echo "  | |_| || |___ |  _ < |  _ < | |_| |  | |   / ___ \  "
echo "  |____/ |_____||_| \_\|_| \_\ \___/   |_|  /_/   \_\ "
echo -e "Palabra fallada:$palabra" >> registro.txt
echo
echo "La palabra era $palabra"
sleep 5
fi
