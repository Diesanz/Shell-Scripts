#!/bin/bash

function g() {
    comentario=$1
    git add .
    git commit -m "$comentario"
}

# Llama a la función con un mensaje
g "Nuevos scripts"
