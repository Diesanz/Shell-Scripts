#!/bin/bash

# Obtener la lista de usuarios del sistema desde el archivo /etc/passwd
usuarios=$(cut -d: -f1 /etc/passwd)

# Imprimir encabezado del informe
echo "Informe de usuario"
echo "-------------------"

# Iterar sobre cada usuario encontrado
for usuario in $usuarios; do

    # Buscar todos los objetos (archivos y directorios) pertenecientes al usuario
    objetos=$(find / -user "$usuario" 2>/dev/null)

    # Comprobar si el usuario tiene objetos asociados
    if [ -z "$objetos" ]; then
        # Si no se encuentran objetos, se imprime el nombre del usuario y se continúa con el siguiente
        echo "Usuario: $usuario"
        continue
    fi

    # Contar el número total de objetos encontrados utilizando wc -l
    num_objetos=$(echo  "$objetos" | wc -l)

    # Obtener el tamaño total de los objetos utilizando du y awk para extraer la primera columna
    tamanio_total=$(du -sh "$objetos" 2>/dev/null | awk '{print $1}')

    # Obtener el objeto más antiguo y más reciente
    # -printf '%T+ %p\n' imprime la fecha y el nombre del objeto, luego se ordena
    obj_antiguo=$(find / -user "$usuario" -printf '%T+ %p\n' 2>/dev/null | sort | head -n 1 | awk '{print $2}')
    obj_reciente=$(find / -user "$usuario" -printf '%T+ %p\n' 2>/dev/null | sort | tail -n 1 | awk '{print $2}')

    # Encontrar el objeto más grande y más pequeño
    # Se utiliza sort para ordenar por tamaño y awk para extraer el nombre del objeto
    obj_grande=$(find / -user "$usuario" -printf '%s %p\n' 2>/dev/null | sort -n | tail -n 1 | awk '{print $2}')
    obj_pequeno=$(find / -user "$usuario" -printf '%s %p\n' 2>/dev/null | sort -n | head -n 1 | awk '{print $2}')

    # Imprimir información del usuario y sus objetos
    echo "Usuario: $usuario"
    echo "Número de objetos: $num_objetos"
    echo "Tamaño total de los objetos: $tamanio_total bytes"
    echo "Objeto más antiguo: $obj_antiguo"
    echo "Objeto más reciente: $obj_reciente"
    echo "Objeto más grande: $obj_grande"
    echo "Objeto más pequeño: $obj_pequeno"
    echo "-----------------------------------"
done
