#!/bin/bash

# Lector de palabra letra por letra
read -p "Introduce la palabra: " palabra
palabraLetras=$(echo -n "$palabra" | wc -c)
echo $palabraLetras

for i in `seq 0 $((palabraLetras-1))`; do
echo -n "_ "
done

echo
let intentos=6

while [ $intentos -gt 0 ]; do
let aciertos=0
echo
read -p "Introduce una letra: " letra

for i in `seq 0 $((palabraLetras-1))`; do
letraPalabra="${palabra:$i:1}"
if [ $letra = $letraPalabra ]
then
echo -n "$letra "
aciertos=$((aciertos+1))
else
echo -n "_ "
fi
done
echo

if [ $aciertos -eq 0 ]
then
echo "Esa letra no se encuentra en la palabra."
intentos=$((intentos-1))
fi

done



