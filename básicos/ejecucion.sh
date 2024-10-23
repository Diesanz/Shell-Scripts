#!/bin/bash

#Ejecución con argumentos
./suma.sh "55" "3"

#Retorno de valores
# Llamar al script suma.sh y capturar su retorno
retorno=$(./suma.sh 5 10)  # Usar $() para capturar la salida del script

# Imprimir el valor retornado
echo "Resultado del script: ${retorno}"


# Ejecución con variables de entorno
# Definir variables de entorno
export NUMERO1=10
export NUMERO2=20

# Llamar al script suma.sh y capturar su retorno
retorno_env=$(./suma.sh)

# Imprimir el valor retornado
echo "Resultado del script con variables de entorno: ${retorno_env}"
