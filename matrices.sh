#!/bin/bash

# Definir un array asociativo
declare -A persona
persona[nombre]="Diego"
persona[edad]=21

# Acceder a elementos del array asociativo
echo "Nombre: ${persona[nombre]}"
echo "Edad: ${persona[edad]}"