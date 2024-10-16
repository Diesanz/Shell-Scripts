#!/bin/bash

# Definir una función con parámetros
saludar() {
    local nombre=$1
    echo "Hola $nombre"
}

# Llamar a la función
saludar "Diego"

# Retornar un valor desde una función
sumar() {
    echo $(( $1 + $2 ))
}

resultado=$(sumar 5 10)
echo "Resultado de la suma: $resultado"