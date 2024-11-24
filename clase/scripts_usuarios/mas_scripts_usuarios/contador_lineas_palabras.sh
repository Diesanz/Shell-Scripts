#!/bin/bash

: 'contador de líneas y palabras de los archivos de un directorio'

directorio=${1:-.}

echo "Archivo | Líneas totales | Palabras totales"
echo "-------------------------------------------"

archivos=$(find "$directorio" -type f 2> /dev/null)

for archivo in $archivos; do
    lineas=$(wc -l < "$archivo")
    palabras=$(wc -w < "$archivo")
    echo "$archivo | $lineas | $palabras"
done