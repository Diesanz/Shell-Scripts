# Guía de Comandos Esenciales en Linux

Esta guía cubre las herramientas más útiles de Linux para trabajar con archivos, texto y procesos, incluyendo sus opciones más comunes y ejemplos.

## 1. `find`

Busca archivos y directorios en el sistema.

**Opciones comunes:**

* `-name <nombre>`: Busca archivos por nombre.
* `-type <f|d>`: Busca archivos (f) o directorios (d).
* `-size <+|-tamaño>`: Busca archivos por tamaño.  (ej: `+10M`, `-1k`)
* `-user <usuario>`: Busca archivos de un usuario específico.
* `-mtime <+|-días>`: Busca archivos modificados hace más (+) o menos (-) de X días.


**Ejemplos:**

```bash
# Buscar archivos llamados archivo.txt en el directorio actual y subdirectorios
find . -name archivo.txt

# Buscar todos los directorios en /home
find /home -type d

# Buscar archivos mayores a 10 MB
find . -type f -size +10M

# Buscar archivos modificados en los últimos 7 días
find . -mtime -7
```

## 2. `awk`

Procesa y analiza texto basado en patrones y columnas.

**Opciones comunes:**

* `1, 2, ...`: Accede a columnas específicas (se refiere a la posición de la columna, separada por espacios por defecto).
* `BEGIN { ... }`: Realiza acciones antes de procesar líneas.
* `END { ... }`: Realiza acciones después de procesar líneas.


**Ejemplos:**

```bash
# Imprimir la primera columna de un archivo
awk '{print $1}' archivo.txt

# Calcular la suma de la segunda columna
awk '{suma += $2} END {print suma}' archivo.txt

# Imprimir líneas donde la tercera columna sea mayor a 10
awk '$3 > 10' archivo.txt
```

## 3. `sort`

Ordena líneas de texto.

**Opciones comunes:**

* `-n`: Ordena numéricamente.
* `-r`: Ordena en orden inverso.
* `-k <col>`: Ordena por una columna específica (ej: `-k2,2` para ordenar por la segunda columna).
* `-u`: Elimina duplicados al ordenar.


**Ejemplos:**

```bash
# Ordenar alfabéticamente
sort archivo.txt

# Ordenar numéricamente
sort -n numeros.txt

# Ordenar por la segunda columna
sort -k2 archivo.txt

# Ordenar en orden inverso
sort -r archivo.txt
```

## 4. `head`

Muestra las primeras líneas de un archivo.

**Opciones comunes:**

* `-n <N>`: Muestra las primeras N líneas.


**Ejemplos:**

```bash
# Mostrar las primeras 10 líneas (por defecto)
head archivo.txt

# Mostrar las primeras 5 líneas
head -n 5 archivo.txt
```

## 5. `tail`

Muestra las últimas líneas de un archivo.

**Opciones comunes:**

* `-n <N>`: Muestra las últimas N líneas.
* `-f`: Muestra las últimas líneas y sigue monitoreando (útil para logs).


**Ejemplos:**

```bash
# Mostrar las últimas 10 líneas (por defecto)
tail archivo.txt

# Mostrar las últimas 5 líneas
tail -n 5 archivo.txt

# Monitorear un archivo en tiempo real
tail -f /var/log/syslog
```

## 6. `grep`

Busca patrones en texto.

**Opciones comunes:**

* `-i`: Ignora mayúsculas y minúsculas.
* `-v`: Excluye líneas que coinciden con el patrón.
* `-r`: Busca recursivamente.
* `-E`: Usa expresiones regulares extendidas.


**Ejemplos:**

```bash
# Buscar líneas que contengan "error"
grep error archivo.txt

# Buscar ignorando mayúsculas
grep -i error archivo.txt

# Excluir líneas que contengan "warning"
grep -v warning archivo.txt

# Buscar recursivamente en un directorio
grep -r "todo" .
```

## 7. `cut`

Extrae columnas o partes de líneas.

**Opciones comunes:**

* `-d <delimitador>`: Especifica el delimitador.
* `-f <campos>`: Especifica las columnas.


**Ejemplos:**

```bash
# Extraer la primera columna (usando un espacio como delimitador)
cut -d ' ' -f 1 archivo.txt

# Extraer la segunda y tercera columna (usando coma como delimitador)
cut -d ',' -f 2,3 archivo.csv
```

## 8. `wc`

Cuenta líneas, palabras o caracteres.

**Opciones comunes:**

* `-l`: Cuenta líneas.
* `-w`: Cuenta palabras.
* `-c`: Cuenta caracteres.


**Ejemplos:**

```bash
# Contar líneas
wc -l archivo.txt

# Contar palabras
wc -w archivo.txt

# Contar caracteres
wc -c archivo.txt
```

## 9. `du`

Muestra el uso de espacio en disco.

**Opciones comunes:**

* `-h`: Muestra el tamaño en un formato legible (KB, MB, GB).
* `-s`: Muestra solo el total.


**Ejemplos:**

```bash
# Ver el tamaño de un archivo o directorio
du -h archivo.txt

# Ver el tamaño total de un directorio
du -sh /home
```

## 10. `ls`

Lista archivos y directorios.

**Opciones comunes:**

* `-l`: Muestra información detallada.
* `-a`: Muestra archivos ocultos.
* `-t`: Ordena por fecha de modificación.
* `-r`: Invierte el orden.


**Ejemplos:**

```bash
# Lista con detalles
ls -l

# Lista incluyendo archivos ocultos
ls -a

# Lista ordenada por fecha (más reciente primero)
ls -lt
```
