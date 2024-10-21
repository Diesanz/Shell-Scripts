#!/bin/bash

function g() {
    
    comentario=$1
    git add .
    git commit -m "$comentario"

    if [ "$2" == "-p" ]; then
        git push -u origin main
    fi
}

# Llama a la función con un mensaje
g "Cambios sobre funcion git" -p

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