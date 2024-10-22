#!/bin/bash

# Ejecutar un comando en segundo plano
sleep 10 &

# Ver trabajos en segundo plano
jobs

# Poner en primer plano
fg %1

# Matar un trabajo en segundo plano
kill %1

# Ejecutar múltiples trabajos en segundo plano y esperar
(sleep 5; echo "Trabajo 1 completado") &
(sleep 10; echo "Trabajo 2 completado") &
wait
echo "Todos los trabajos completados"
