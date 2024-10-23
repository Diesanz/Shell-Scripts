#!/bin/bash

#Redirigir la salida estandar
echo "Salida normal" > salida.txt

#Redirigir la salida 
echo "Salida de error" 1> error.txt

#Redirigir la salida de error estandar
echo "Salida de error estandar" 2> error_estandar.txt

#Redirigir la salida estandar y la salida de error estandar al mismo archivo
echo "Salida normal y salida de error estandar" > salida_error_estandar.txt 2>&1

#Mostrar los archivos generados
ls -l salida.txt error.txt error_estandar.txt salida_error_estandar.txt

#Tuberias y redirección
ls -l | grep ".sh" > script.sh

#Tuberias
cat script.sh | sort > script_ordenado.txt

#Agregar salida sin sobreescribir
echo "Salida agregada" >> salida.txt

#Mostrar los archivos generados
ls -l salida.txt script_ordenado.txt
