#!/bin/bash

echo "Nombre del script: $0"
echo "Número de parámetros: $#"
echo "Todos los parámetros: $@"

for param in "$@"; do
    echo "Parámetro: $param"
done

# Comprobar el estado de salida del último comando
if [[ $? -eq 0 ]]; then
    echo "El último comando fue exitoso"
else
    echo "El último comando falló"
fi