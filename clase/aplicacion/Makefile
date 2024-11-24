
# Variables
CC = gcc
CFLAGS = -Wall -Wextra -O2
SRC = logs_lecture.c query_processing.c
OBJ = $(SRC:.c=.o)
DEPS = $(OBJ:.o=.d)
EXECUTABLE = programa

help:
	@echo
	@echo "Análisis de Logs de Servidor Web"
	@echo
	@echo "Diego Sanz Santos"
	@echo
	@echo "make show_bytes    Compila el proyecto con la macro 'SHOW_BYTES' activada"
	@echo "make show_analysis Compila el proyecto con la macro 'SHOW_ANALYSIS' activada"
	@echo
	@echo "make all           Compila el proyecto con las opciones predeterminadas"
	@echo "make clean         Borra ejecutables, archivos y dependencias"

# Regla principal
$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXECUTABLE)

# Generación de dependencias
%.d: %.c
	@$(CC) -MM $(CFLAGS) $< > $@

-include $(DEPS)

all: CFLAGS += -DSHOW_BYTES -DSHOW_ANALYSIS 
all: $(EXECUTABLE)

show_bytes: CFLAGS += -DSHOW_BYTES
show_bytes: $(EXECUTABLE)

show_analysis: CFLAGS += -DSHOW_ANALYSIS
show_analysis: $(EXECUTABLE)

# Limpieza
.PHONY: clean all show_bytes show_analysis
clean:
	rm -f $(EXECUTABLE) $(OBJ) $(DEPS)


