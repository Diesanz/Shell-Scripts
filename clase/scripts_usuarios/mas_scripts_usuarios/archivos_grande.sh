#!/bin/bash

: 'Archivos más grande de un directorio, muestra 10 directorios más grandes del directorio'

directorio=${1:-/var/log}

archivos=$(find "$directorio" -type f 2> /dev/null)

for archivo in $archivos; do
    if [[ ! -f $archivo ]]; then
        continue
    fi

    tamanio=$(stat "$archivo" | sed -n '2p' | awk '{print $2}')
    echo "$tamanio $archivo"
done | sort -nr | head -n 10
