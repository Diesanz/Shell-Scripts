#!/bin/bash

# Capturar señales con trap
trap "echo 'Señal SIGINT capturada'; exit" SIGINT
trap "echo 'Saliendo'; exit" SIGTERM

while true; do
    echo "Ejecutando... (Ctrl+C para interrumpir)"
    sleep 2
done