#!/bin/bash

# Habilitar modo de depuración
set -x

echo "Esto se mostrará con depuración"

# Habilitar un error que provocará la interrupción
false

echo "Esto no se ejecutará debido al error"