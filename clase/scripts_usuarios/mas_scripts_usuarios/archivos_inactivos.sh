#!/bin/bash

: 'Escribe un script que encuentre los archivos en los directorios home de los usuarios que no han sido modificados en los últimos 6 meses. 
Imprime el nombre del archivo y el usuario al que pertenece.'

usuarios=$(cut -d: -f1 /etc/passwd)

# Fecha de 6 meses atrás
six_months_ago=$(date -d "1 months ago" +%s)

for user in $usuarios; do
    archivos=$(find '/home' -user "$user" -type f)
    
    for archivo in $archivos; do
        if [ ! -e "$archivo" ]; then
            continue
        fi
        
        last_modified=$(stat "$archivo" | sed -n '6p' | awk '{print $2}' 2> /dev/null)  
        
        if [ -z "$last_modified" ]; then
            continue
        fi
        
        last_modified_seconds=$(date -d "$last_modified" +%s)

        if [ $last_modified_seconds -lt $six_months_ago ]; then
            echo "Archivo: $archivo"
            echo "Usuario: $user"
        fi
    done
done