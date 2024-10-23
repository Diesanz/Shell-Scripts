#!/bin/bash

# Definir un array asociativo
declare -A persona
persona[nombre]="Diego"
persona[edad]=21

# Acceder a elementos del array asociativo
echo "Nombre: ${persona[nombre]}"
echo "Edad: ${persona[edad]}"

# Añadir un nuevo elemento al array asociativo
persona[apellido]="Garcia"
echo "Apellido: ${persona[apellido]}"

# Eliminar un elemento del array asociativo
unset persona[apellido]
echo "Apellido eliminado: ${persona[apellido]}"

# Mostrar todos los elementos del array asociativo
echo "Todos los elementos del array asociativo:"
for key in "${!persona[@]}"; do
    echo "$key: ${persona[$key]}"
done
