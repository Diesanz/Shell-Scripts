#!/bin/bash

# Definir un array
nombres=("Diego" "Ana" "Carlos")

# Acceder a elementos del array
echo "Primer nombre: ${nombres[0]}"
echo "Segundo nombre: ${nombres[1]}"
echo "Tercer nombre: ${nombres[2]}"

# Añadir elementos
nombres+=("Luis")

# Recorrer el array
for nombre in "${nombres[@]}"; do
    echo "Nombre: $nombre"
done

# Longitud del array
echo "Número de elementos: ${#nombres[@]}"