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
echo
read -p "Introduce una letra: " letra

for i in `seq 0 $((palabraLetras-1))`; do
letraPalabra="${palabra:$i:1}"
if [ $letra = $letraPalabra ]
then
echo -n "$letra "
$letra++;
else
echo -n "_ "
fi
done

intentos=$((intentos-1))
done