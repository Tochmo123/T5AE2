#!/bin/bash

# Lector de palabra letra por letra

read -p "Introduce la palabra: " palabra
palabra="$(echo -n "$palabra" | tr '[:lower:]' '[:upper:]')"
letrasAcertadas=""
letrasFalladas=""
clear
echo $palabra

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
letrasFalladas=$((letrasFalladas+letra))
aciertos=$((aciertos+1))
else
echo -n "_ "
letrasFalladas=$((letrasFalladas+letra))
fi
done
echo

if [ $aciertos -eq 0 ]
then
echo "Esa letra no se encuentra en la palabra."
intentos=$((intentos-1))
fi
done



