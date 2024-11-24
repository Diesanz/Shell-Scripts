#!/bin/bash

if [[ "$#" -ne 1 ]]; then
    echo "Falta un archivo"
    exit 1
fi 

if [[ ! -f "$1" ]]; then
    echo "El archivo no existe"
    exit 1
fi

while IFS= read -r file || [[ -n "$file" ]]; do
    if [[ -f "$file" ]]; then
        hash1=$(md5sum "$file" | awk '{print $1}')
        hash2=$(stat "$file" | md5sum | awk '{print $1}')
        echo "$file;$hash1;$hash2" >> salida.txt
    fi
done < "$1"