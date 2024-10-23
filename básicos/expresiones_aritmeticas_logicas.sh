#!/bin/bash

# Aritmética con valores ingresados por el usuario
read -p "Ingresa el primer número: " num1
read -p "Ingresa el segundo número: " num2
resultado=$((num1 + num2))
echo "La suma es: $resultado"

# Operaciones lógicas
if [[ $num1 -eq 5 || $num2 -eq 10 ]]; then
    echo "Una de las condiciones es verdadera"
else
    echo "Ninguna de las condiciones es verdadera"
fi


# Operaciones de comparación
if (( num1 > num2 )); then
    echo "$num1 es mayor que $num2"
    (( num1++ ))
    echo "El nuevo valor de num1 es: $num1"
    (( num2-- ))
    echo "El nuevo valor de num2 es: $num2"

elif (( num1 < num2 )); then
    echo "$num1 es menor que $num2"
else
    echo "$num1 es igual a $num2"
fi

if (( num1 == num2 )); then
    echo "Ambos valores son iguales"
else
    echo "Ambos valores son diferentes"
fi


# Tuplas
tupla=(1 "2" "3")
echo "Tupla original: ${tupla[@]}"
tupla+=("4" "5")