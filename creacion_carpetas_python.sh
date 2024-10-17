#!/bin/bash

# Nombre del proyecto (pasado como argumento o por defecto 'my_project')
PROJECT_NAME=${1:-my_project}
VENV_NAME="${PROJECT_NAME}_env"  # Nombre del entorno virtual

# Crear la estructura de directorios
echo "Creando estructura de carpetas para el proyecto Python: $PROJECT_NAME..."

mkdir -p $PROJECT_NAME/$PROJECT_NAME  # Carpeta del proyecto principal
mkdir -p $PROJECT_NAME/tests          # Carpeta para los tests

# Crear archivos básicos
touch $PROJECT_NAME/$PROJECT_NAME/__init__.py  # Indicador de paquete
touch $PROJECT_NAME/$PROJECT_NAME/main.py      # Archivo principal
touch $PROJECT_NAME/$PROJECT_NAME/module.py    # Módulo ejemplo
touch $PROJECT_NAME/tests/__init__.py          # Indicador de paquete para tests
touch $PROJECT_NAME/tests/test_module.py       # Archivo de prueba
touch $PROJECT_NAME/.gitignore                 # Archivo para ignorar ficheros
touch $PROJECT_NAME/README.md                  # Archivo de documentación
touch $PROJECT_NAME/requirements.txt           # Archivo de dependencias

# Añadir contenido básico al README.md
echo "# $PROJECT_NAME" > $PROJECT_NAME/README.md
echo "Descripción del proyecto $PROJECT_NAME" >> $PROJECT_NAME/README.md

# Añadir reglas básicas al .gitignore
echo "$VENV_NAME/" >> $PROJECT_NAME/.gitignore
echo "*.pyc" >> $PROJECT_NAME/.gitignore
echo "__pycache__/" >> $PROJECT_NAME/.gitignore

# Crear el entorno virtual dentro de la carpeta del proyecto
echo "Creando entorno virtual $VENV_NAME..."
python -m venv $VENV_NAME

# Mensaje de éxito
echo "Estructura de carpetas creada con éxito para $PROJECT_NAME."
echo "Entorno virtual creado en $PROJECT_NAME/$VENV_NAME."
