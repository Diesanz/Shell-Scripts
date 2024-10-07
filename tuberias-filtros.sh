#!/bin/bash

#Uso de tuberías para buscar información de archivos del sistema
#Ejecuta comando ps, se busca en su salida las líneas que contengan la palabra zsh, de esas líneas se recogen las las columnas 1 y 4, 
#Luego se reemplaza la palabra zsh con la palabra "Consola" en cada línea utilizando sed.
ps | grep "zsh" | awk '{print $1, $4}' | sed 's/zsh/Consola/g'   


#Uso de tuberías para buscar información de procesos en ejecución
#Ordenar por uso de memoria
ps aux --sort=-%mem | head -n 10 | awk '{print $1, $2, $3}' 

#Buscar y reemplazar
#En la carpeta actual, busca los archivos con extensión.txt y renombra cada uno agregando el prefijo "backup_"
find -name "*.txt" -exec rename's/^/backup_/' {} \;

#Uso de tuberías para procesar resultados de comandos
#Ejecuta el comando ls -l y después filtra las líneas que contienen la palabra "txt" y las imprime
ls -l | grep "txt" | awk '{print $9}'

#Uso de tuberías para concatenar y filtrar resultados
#Concatena los resultados de los comandos anteriores y filtra las líneas que contienen la palabra "txt"
cat $(ls -l | grep "txt" | awk '{print $9}') | grep "txt"

