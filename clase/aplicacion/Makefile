# Nombre del compilador
CC = gcc

# Opciones de compilación
CFLAGS = -Wall -g

# Archivos fuente
SOURCES = logs_lecture.c query_processing.c

# Ejecutable final
EXECUTABLE = logs_program

# Regla por defecto para compilar el ejecutable
all: $(EXECUTABLE)

# Regla para compilar el ejecutable
$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^

# Regla para limpiar archivos temporales
clean:
	rm -f $(EXECUTABLE) *.o
