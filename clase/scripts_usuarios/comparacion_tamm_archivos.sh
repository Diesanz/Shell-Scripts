#!/bin/bash

# Obtiene una lista de usuarios desde el archivo /etc/passwd
usuarios=$(cut -d: -f1 /etc/passwd)

# Declara un array asociativo para almacenar el espacio utilizado por cada usuario
declare -A espacio

# Itera sobre cada usuario para calcular el espacio utilizado en su directorio home
for usuario in $usuarios; do
    # Usa 'du' para calcular el espacio total utilizado por el directorio home del usuario
    # Redirige errores a /dev/null para evitar mensajes en caso de que el directorio no exista
    espacio["$usuario"]=$(du -sh /home/"$usuario" 2>/dev/null | cut -f1) # Muestra el total 
done

# Imprime el encabezado para la sección de espacio en disco
echo "Espacio en disco utilizado por cada usuario:"
echo "---------------------------------------------"

# Mostrar la lista ordenada de usuarios según el espacio total de almacenamiento
for usuario in "${!espacio[@]}"; do
    espacio_usuario=${espacio[$usuario]} # Obtiene el espacio utilizado por el usuario

    if [ ! -z "$espacio_usuario" ]; then # Comprueba que la variable no esté vacía
        echo "$espacio_usuario:  $usuario" # Imprime el espacio y el nombre del usuario
        continue
    fi
done | sort -n # Ordena numéricamente la salida

echo "" # Línea en blanco para separar secciones
echo "Usuarios con archivos mayores a 100K en su directorio HOME:"
echo "----------------------------------------------------------"

# Itera sobre cada usuario para encontrar archivos mayores a 100K
for usuario in $usuarios; do
    # Busca archivos mayores a 100K en el directorio home del usuario
    archivos_mayores_100K=$(find /home/"$usuario" -type f -size +100k 2>/dev/null)

    if [ ! -z "$archivos_mayores_100K" ]; then # Comprueba si la variable no está vacía
        echo "Usuario: $usuario" # Imprime el nombre del usuario
        for archivo in $archivos_mayores_100K; do
            echo "Archivo: $archivo" # Imprime cada archivo encontrado
        done
    fi
done
