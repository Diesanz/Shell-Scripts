#!/bin/bash

function g() {
    comentario=$1
    git add .
    git commit -m "$comentario"
}

# Llama a la función con un mensaje
g "Nuevos scripts"

function home() {
    if [[ "$1" == "--help" ]]; then
        echo "Funciones definidas:"
        # Buscar y mostrar las funciones definidas en ~/.zshrc
        grep -E 'Funcion \[.*\]' ~/.zshrc
    else
        echo "Usa --help para ver las funciones disponibles."
    fi
}


home