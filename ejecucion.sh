#!/bin/bash

#Ejecución con argumentos
./suma.sh "55" "3"

#Retorno de valores
# Llamar al script suma.sh y capturar su retorno
retorno=$(./suma.sh 5 10)  # Usar $() para capturar la salida del script

# Imprimir el valor retornado
echo "Resultado del script: ${retorno}"
