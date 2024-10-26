# Informes de Usuarios en el Sistema

Este proyecto incluye dos scripts de Bash que generan informes sobre los usuarios del sistema. Cada script ofrece diferentes tipos de análisis sobre los archivos y directorios pertenecientes a los usuarios.

## Script 1: Informe de Espacio en Disco por Usuario

### Descripción

El primer script analiza el espacio en disco utilizado por cada usuario en el sistema. Realiza las siguientes acciones:

1. **Obtiene la lista de usuarios**: Extrae los nombres de usuario del archivo `/etc/passwd`.
  
2. **Calcula el espacio utilizado**: Para cada usuario, calcula el espacio total en disco que utilizan en su directorio HOME.

3. **Identifica archivos grandes**: Busca archivos en el directorio HOME de cada usuario que sean mayores a 100K y los enumera.

4. **Genera el informe**: Imprime el espacio utilizado por cada usuario, ordenado de menor a mayor.

## Script 2: Informe de Objetos por Usuario

### Descripción

El segundo script proporciona un informe detallado sobre los objetos (archivos y directorios) que pertenecen a cada usuario del sistema. Realiza las siguientes acciones:

1. **Obtener la lista de usuarios**: Extrae los nombres de usuario del archivo /etc/passwd.

2. **Buscar objetos de usuario**: Para cada usuario, busca todos los archivos y directorios que le pertenecen.

3. **Generar estadísticas**:

    - Cuenta el número de objetos que posee cada usuario.
    - Calcula el tamaño total de todos los objetos.
    - Identifica el objeto más antiguo y más reciente.
    - Encuentra el objeto más grande y más pequeño.

4. **Imprimir el informe**: Presenta la información de manera estructurada en la consola.