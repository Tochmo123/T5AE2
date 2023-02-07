#!/bin/bash

# Lector de palabra letra por letra

read -p "Introduce la palabra: " palabra
palabra="$(echo -n "$palabra" | tr '[:lower:]' '[:upper:]')"
palabraLetras=$(echo -n "$palabra" | wc -c )
letrasFalladas=""
letrasFalladasCantidad=$(echo -n "$letrasFalladas" | wc -c )
clear
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
else 
echo "   ____   _____  ____   ____    ___   _____     _     "
echo "  |  _ \ | ____||  _ \ |  _ \  / _ \ |_   _|   / \    "
echo "  | | | ||  _|  | |_) || |_) || | | |  | |    / _ \   "
echo "  | |_| || |___ |  _ < |  _ < | |_| |  | |   / ___ \  "
echo "  |____/ |_____||_| \_\|_| \_\ \___/   |_|  /_/   \_\ "
fi