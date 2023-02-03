#!/bin/bash

# Lector de palabra letra por letra

read -p "Introduce la palabra: " palabra
palabra="$(echo -n "$palabra" | tr '[:lower:]' '[:upper:]')"
palabraLetras=$(echo -n "$palabra" | wc -c )
letrasAcertadas=""
letrasAcertadasCantidad=$(echo -n "$letrasAcertadas" | wc -c )
letrasFalladas=""
letrasFalladasCantidad=$(echo -n "$letrasFalladas" | wc -c )
clear

for i in `seq 0 $((palabraLetras-1))`; do
echo -n "_ "
done

echo
let intentos=6

while [ $intentos -gt 0 ]; do
let aciertos=0
echo
read -p "Introduce una letra: " letra
letra="$(echo -n "$letra" | tr '[:lower:]' '[:upper:]')"
for i in `seq 0 $((palabraLetras-1))`; do
letraPalabra="${palabra:$i:1}"

if [ $letra = $letraPalabra ]
then
echo -n "$letra "
letrasAcertadas+=$letra
letrasAcertadasCantidad=$(echo -n "$letrasAcertadas" | wc -c )
aciertos=$((aciertos+1))
else

echo -n "_ "
fi
done
echo

if [ $aciertos -eq 0 ]
then
echo
echo "Esa letra no se encuentra en la palabra."
intentos=$((intentos-1))
letrasFalladas+=$letra
letrasFalladasCantidad=$(echo -n "$letrasFalladas" | wc -c )
echo "Las letras que no se encuentran en la palabra son las siguientes:"
for i in `seq 0 $((letrasFalladasCantidad-1))`; do
letraFallada="${letrasFalladas:$i:1}"
echo -n $letraFallada
done

fi
done
echo -e "\nIntentos agotados."