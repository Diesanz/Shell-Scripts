#!/bin/bash

# Leer entrada del usuario
read -p "Ingresa tu nombre: " nombre
echo "Hola, $nombre."

# Leer de un archivo y mostrar contenido
while IFS= read -r linea; do
    echo "Línea: $linea"
done < nsc.sh

# Pedir confirmación antes de eliminar archivo
read -p "¿Estás seguro de eliminar el archivo 'nsc.sh'? (s/n): " confirmacion
if [ "$confirmacion" == "s" ]; then
    rm nsc.sh
    echo "Archivo eliminado."
fi


# Validar edad
read -p "Ingresa tu edad: " edad
if ! [[ $edad =~ ^[0-9]+$ ]]; then
    echo "Debes ingresar un número entero."
    exit 1
fi

if ((edad < 18)); then
    echo "No puedes votar, eres menor de edad."
else
    echo "Puedes votar."
fi

# Mostrar fecha y hora actual
echo "Fecha y hora actual: $(date)"
