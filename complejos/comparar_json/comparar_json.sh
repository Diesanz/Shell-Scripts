#!/bin/bash

# Archivos JSON a comparar
file1="file1.json"
file2="file2.json"

# Extraer y formatear JSON
jq -S . "$file1" > formatted_file1.json
jq -S . "$file2" > formatted_file2.json

# Comparar archivos
diff formatted_file1.json formatted_file2.json > differences.txt

# Comprobar si hay diferencias
if [ -s differences.txt ]; then
    echo "Se encontraron diferencias. Consulta differences.txt para más detalles."
else
    echo "Los archivos JSON son idénticos."
fi

# Limpiar archivos temporales
rm formatted_file1.json formatted_file2.json
