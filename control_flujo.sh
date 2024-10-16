#!/bin/bash

# Estructura condicional con múltiples condiciones
if [[ $1 -ge 10 && $1 -le 20 ]]; then
    echo "Número entre 10 y 20"
else
    echo "Número fuera de rango"
fi

# Bucle for iterando sobre archivos en un directorio
for archivo in *.sh; do
    echo "Script encontrado: $archivo"
done

# Bucle while con contador
contador=0
while [[ $contador -lt 5 ]]; do
    echo "Contador: $contador"
    ((contador++))
done

# Estructura case
read -p "Selecciona una opción (a/b/c): " opcion
case $opcion in
    a) echo "Opción A seleccionada";;
    b) echo "Opción B seleccionada";;
    c) echo "Opción C seleccionada";;
    *) echo "Opción no válida";;
esac