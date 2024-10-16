#!/bin/bash

cadena="Hola Mundo"

# Longitud de la cadena
echo "Longitud de la cadena: ${#cadena}"

# Subcadena
echo "Primeros 4 caracteres: ${cadena:0:4}"

# Reemplazo de subcadenas
cadena_modificada=${cadena/Mundo/Script}
echo "Cadena modificada: $cadena_modificada"