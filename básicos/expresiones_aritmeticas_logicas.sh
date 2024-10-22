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
