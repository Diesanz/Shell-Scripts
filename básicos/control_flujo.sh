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


# Estructura select con lista de opciones
echo "Seleccione una opción:"
options=("Opción A" "Opción B" "Opción C")

select opt in "${options[@]}"
do
    case $opt in
        "Opción A") echo "Opción A seleccionada"; break;;
        "Opción B") echo "Opción B seleccionada"; break;;
        "Opción C") echo "Opción C seleccionada"; break;;
        *) echo "Opción no válida";;
    esac
done