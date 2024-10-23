#!/bin/bash

# Habilitar modo de depuración
set -x

echo "Esto se mostrará con depuración"

# Habilitar un error que provocará la interrupción
false

echo "Esto no se ejecutará debido al error"

# Crear directorios con permisos de lectura y escritura para todos los usuarios
mkdir -p /tmp/dir1 /tmp/dir2
chmod 777 /tmp/dir1 /tmp/dir2

# Crear un archivo con permisos de lectura y escritura para todos los usuarios
touch /tmp/file1 /tmp/file2
chmod 666 /tmp/file1 /tmp/file2

# Mostrar los permisos de los archivos y directorios
ls -l /tmp/dir1 /tmp/dir2 /tmp/file1 /tmp/file2
