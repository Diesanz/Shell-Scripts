function nsc(){
    name=$1  # Captura del primer argumento

    # Verifica si no se ha proporcionado un nombre
    if [ -z "$name" ]; then
        echo "ERROR: faltan campos"
        return 1
    fi

    # Verifica si el nombre no contiene un punto
    if [[ ! $name == *.* ]]; then
        name="${name}.sh"  # Agrega la extensión ".sh" si no la tiene
    fi

    # Crea el archivo y escribe el encabezado del script bash
    cat <<EOF > "$name"
    #!/bin/bash
    EOF

    # Da permisos de ejecución al archivo
    chmod u+x "$name"

}