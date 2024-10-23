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

# Ejecutar un comando y capturar su salida
salida=$(ls -l)
echo "Salida del comando: $salida"


# Ejecutar un comando y capturar su salida en un archivo
ls -l > output.txt


# Ejecutar un comando y capturar sus errores
ls -l 2> error.txt

# Ejecutar un comando y capturar su salida y errores en un archivo
ls -l 2> error.txt 1> output.txt

# Ejecutar un comando y obtener el código de salida
codigo_salida=$?
echo "Código de salida del comando: $codigo_salida"