#!/bin/bash

cadena="Hola Mundo"

# Longitud de la cadena
echo "Longitud de la cadena: ${#cadena}"

# Subcadena
echo "Primeros 4 caracteres: ${cadena:0:4}"

# Reemplazo de subcadenas
cadena_modificada=${cadena/Mundo/Script}
echo "Cadena modificada: $cadena_modificada"

# Expresión regular para encontrar todas las palabras en la cadena
echo "Palabras en la cadena: $(echo $cadena | tr ' ' '\n' | grep -E '^[a-zA-Z]+$')"

# Separación de la cadena en palabras
palabras=($(echo $cadena | tr ' ' '\n'))
echo "Palabras en la cadena (array): ${palabras[@]}"

# Ordenamiento de palabras en la cadena
palabras_ordenadas=($(echo "${palabas[@]}" | tr ' ' '\n' | sort))
echo "Palabras en la cadena (ordenadas): ${palabras_ordenadas[@]}"

