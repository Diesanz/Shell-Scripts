#!/bin/bash

: 'Detectar si algún archivo en los directorios home de cada usuario tiene permisos públicos y muestra los nombres de los archivos y sus propietarios'

usuarios=$(cut -d: -f1 /etc/passwd)

for usuario in $usuarios; do

    archivos=$(find /home -user "$usuario" -type f 2> /dev/null)

    if [[ -z "$archivos" ]]; then
        echo "No existen archivos para '$usuario'..."
        continue
    fi

    for archivo in $archivos; do 
        permisos=$(ls -l "$archivo" | awk '{print $1}')

        permisos_otros=$(echo "$permisos" | cut -c8-10)

        if [[ $permisos_otros != "---" ]]; then
            echo "Archivo público encontrado: $archivo"
            echo "Usuario: $usuario, Permisos: $permisos"
        fi
    done
done