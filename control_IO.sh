#!/bin/bash

# Leer entrada del usuario
read -p "Ingresa tu nombre: " nombre
echo "Hola, $nombre."

# Leer de un archivo y mostrar contenido
while IFS= read -r linea; do
    echo "Línea: $linea"
done < nsc.sh