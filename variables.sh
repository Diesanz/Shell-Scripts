#!/bin/bash

# Variables simples
nombre="Diego"
edad=21
fecha_nacimiento=$(date +%Y-%m-%d)

# Variables de entorno
export VAR_ENTORNO="Este es un valor de entorno"

# Sustitución de comandos
espacio_disponible=$(df -h | grep '/$' | awk '{print $4}')

# Mostrar variables
echo "Hola, soy $nombre, tengo $edad años."
echo "Nací el: $fecha_nacimiento."
echo "Espacio disponible en disco: $espacio_disponible."

# Usar una variable en una expresión regular
patron="^[A-Za-z]+$"
if [[ $nombre =~ $patron ]]; then
    echo "$nombre es un nombre válido"
else
    echo "$nombre no es un nombre válido"
fi

if 