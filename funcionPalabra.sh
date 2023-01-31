#!/bin/bash
#Función que genera una palabra aleatoria
function generaPalabra() {
    num=$(($RANDOM % 10 + 1))
    palabra=$(sed -n "$num"p palabras.txt)
    echo $palabra
}

name