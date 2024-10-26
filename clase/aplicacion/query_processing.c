#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stadistics_struct.h"

//Inserta un cliente si no existe
void apend_register(Stadistics_client **head, int bytes, int hora, const char *ip){
    Stadistics_client *new_node = (Stadistics_client *)malloc(sizeof(Stadistics_client));
    new_node->bytes = bytes;
    strncpy(new_node->ip, ip, 16); // Evitar sobreescribir memoria
    new_node->hora = hora; 
    new_node->next = *head; // Inserta el nuevo nodo al comienzo de la lista
    new_node->consultas = 1;
    *head = new_node; // Actualiza el puntero head
}

//Libera memoria de la lista enlazada
void free_list(Stadistics_client **head) {
    Stadistics_client *tmp;
    while (*head!= NULL) {
        tmp = *head;
        *head = (*head)->next;
        free(tmp);
    }
    printf("\nLista enlazada liberada\n");
}

// Agrega un nuevo registro a la lista de estadísticas si no existe, sino aumenta los bytes y consultas
void check_client(Stadistics_client **head, int bytes, int hora, const char *ip) {
    Stadistics_client *current = *head;
    while (current!= NULL) {
        if (strcmp(current->ip, ip) == 0) {
            current->bytes += bytes;
            current->consultas += 1;
            return;
        }
        current = current->next;
    }

    // Si llegamos aquí es porque no se encontró el cliente
    apend_register(head, bytes, hora, ip);
}

// Analiza una línea de log y actualiza las estadísticas
void line_analysis(char *linea, Stadistics_client **head, int *bytes_per_hour) {
    int bytes;
    char fecha[20];
    int hora, minuto, segundo;
    char ip[20];

    //Extrae ip
    sscanf(linea, "%[^ ] ", ip);

    // Extraer bytes
    sscanf(linea, "%*[^ ] %*[^ ] %*[^ ] %*[^ ] %*[^ ] %*[^ ] %*[^ ] %*[^ ] %d", &bytes); 

    // Extraer fecha y hora
    sscanf(linea, "%*[^ ] %*s %*s [%[^:]:%d:%d:%d",fecha, &hora, &minuto, &segundo);

    // Ajustar hora para que sea válida
    bytes_per_hour[hora] += bytes;

    check_client(head, bytes, hora, ip);
}

//Muestra las estadíticas de un cliente
void show_list(Stadistics_client *head) {
    int consultas = 0;
    char *client;
    while (head != NULL) {
        printf("IP: %s\n", head->ip);
        printf("Total Bytes: %d\n", head->bytes);
        printf("Consultas: %d\n", head->consultas);

        if (head->consultas > consultas){
            consultas = head->consultas;
            client = head->ip;
        }

        head = head->next;

    }

    printf("\nCliente con más consultas: %s con %d consultas.\n", client, consultas);
}

