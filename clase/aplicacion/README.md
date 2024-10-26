# Análisis de Logs de Servidor Web

## Descripción
Esta aplicación, desarrollada en lenguaje C, está diseñada para analizar los registros de un servidor web en sistemas Linux. A través de un archivo de log, el programa calcula métricas específicas, como la IP del cliente con más consultas, la cantidad de bytes descargados y el tráfico segmentado por cliente y por hora.

## Estructura del Proyecto
El código está organizado en módulos (archivos fuente), cada uno dedicado a una tarea específica, como:
- Lectura de logs
- Procesamiento de consultas

Esta estructura permite una mejor organización y facilita el mantenimiento del código.

## Objetivo del Proyecto
El propósito de este proyecto es implementar un sistema de compilación modular mediante un archivo `Makefile` que:
- Permite compilar la aplicación sin recompilar todos los módulos.
- Solo recompila los módulos modificados, optimizando así el proceso de compilación.
## Instalación y Uso
1. **Formato del Log**: Familiarízate con los formatos de log de **Apache Web Server** o **Internet Information Server** para entender correctamente los datos en cada línea del archivo.
2. **Compilación**: Ejecuta `make` en la terminal para compilar el proyecto. El `Makefile` está configurado para recompilar solo los módulos necesarios.
3. **Ejecución**: Una vez compilado, ejecuta el programa especificando el archivo de log para procesar y obtener las métricas.

## Funcionalidades de la Aplicación
El programa ofrece las siguientes funcionalidades:
- **IP con más consultas**: Muestra la dirección IP del cliente que ha realizado más solicitudes al servidor.
- **Tráfico descargado por cliente**: Calcula el total de bytes descargados por cada cliente.
- **Segmentación horaria**: Organiza las consultas por intervalos horarios, desde las 00:00 hasta las 23:59.

## Herramientas de Perfilado y Depuración
Es posible realizar un perfilado del programa para mejorar su rendimiento, y el depurador `gdb` puede utilizarse para corregir errores de código.

## Requisitos
Es probable que necesites instalar ciertos paquetes adicionales para compilar y ejecutar esta aplicación en un sistema Linux. Para instalarlos, utiliza el gestor de paquetes de tu distribución (ej., `apt` en sistemas Debian/Ubuntu).

# Análisis de Estadísticas de Clientes

Este programa en C se encarga de leer registros de acceso de un archivo y analizar estadísticas como la cantidad de bytes transferidos por hora y el número de consultas realizadas por cada cliente. Utiliza listas enlazadas para almacenar la información de cada cliente.

## Características

- Lee líneas de un archivo de registro.
- Almacena estadísticas por cliente, incluyendo:
  - Total de bytes transferidos.
  - Número de consultas realizadas.
- Muestra la cantidad de bytes transferidos por hora.
- Identifica al cliente con más consultas.

## Estructuras de Datos

### `Stadistics_client`

Esta estructura representa a un cliente en la lista enlazada.

```c
typedef struct Stadistics_client {
    char ip[16];             // IP del cliente
    int bytes;               // Total de bytes transferidos
    int hora;                // Hora de la consulta
    int consultas;           // Número de consultas realizadas
    struct Stadistics_client *next; // Puntero al siguiente nodo
} Stadistics_client;


