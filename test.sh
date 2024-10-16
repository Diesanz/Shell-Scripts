#!/bin/bash

# Test para verificar archivos
if test -f "archivo.txt"; then
    echo "El archivo existe"
else
    echo "El archivo no existe"
fi

# Test para verificar directorios
if test -d "/directorio"; then
    echo "El directorio existe"
else
    echo "El directorio no existe"
fi

# Test de cadenas
cadena="Hola"
if test -n "$cadena"; then
    echo "La cadena no está vacía"
fi