#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stadistics_struct.h"

#define MAX_LINES 40000
#define MAX_LINE_LENGTH 700

//Obtener lineas del fichero
char **get_array_lines(FILE *fptr) {
    char **array_lines = malloc(MAX_LINES * sizeof(char *));
    if (array_lines == NULL) {
        fprintf(stderr, "Error al asignar memoria para array_lines.\n");
        return NULL;
    }
    
    char buffer[MAX_LINE_LENGTH];
    int line_count = 0;

    while (fgets(buffer, sizeof(buffer), fptr) != NULL && line_count < MAX_LINES) {
        array_lines[line_count] = strdup(buffer); // Crea copia de buffer
        if (array_lines[line_count] == NULL) {
            fprintf(stderr, "Error al duplicar la línea.\n");
            break;
        }
        line_count++;
    }
    array_lines[line_count] = NULL; // Marca el final del arreglo

    return array_lines;
}

//Liberar array de lineas
void free_lines(char **lines){
    for(int i = 0; i < MAX_LINES; i++){
        free(lines[i]); //libera cada linea (strdup)
    }

    free(lines); //Libera el arreglo (malloc)
}

int main(int argc, char **argv){

    if(argc < 2){
        printf("Usage: %s <string>\n", argv[0]);
        return 1;
    }

    // Abrir el archivo para lectura
    FILE *fptr = fopen(argv[1], "r");

    if(fptr == NULL){
        printf("Error opening file %s\n", argv[1]);
        return 1;
    }

    //Crear un puntero a un arreglo de cadenas
    char **lines = get_array_lines(fptr);

    fclose(fptr);

    // Inicializar la lista de estadísticas
    Stadistics_client *head = NULL;
    int bytes_per_hour[24] = {0};

    // Analizar cada línea usando la función line_analysis
    for (char **linea = lines; *linea != NULL; linea++) {
        line_analysis(*linea, &head, bytes_per_hour);
    }

    #ifdef SHOW_BYTES
    // Mostrar bytes por hora
    printf("\nBytes por hora:\n");
    printf("---------------------\n");
    for (int i = 0; i < 24; i++) {
        printf("Total Bytes en la hora %02d: %d\n", i, bytes_per_hour[i]);
    }
    #endif

    #ifdef SHOW_ANALYSIS
    //Mostrar resultados
    printf("\n================================\n");
    printf("Análisis de líneas");
    printf("\n================================\n");
    show_list(head);
    #endif

    // Liberar memoria
    free_lines(lines);

    // Liberar la lista de estadísticas
    free_list(&head); 

    return 0;
}