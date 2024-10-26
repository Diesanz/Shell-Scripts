#ifndef STADISTICS_H
#define STADISTICS_H

typedef struct Stadistics_client{
    int bytes;
    char ip[16];
    int hora;
    int consultas;
    struct Stadistics_client *next;
}Stadistics_client;

// Declaración de funciones
void apend_register(Stadistics_client **head, int bytes, int hora, const char *ip);
void free_list(Stadistics_client **head);
void line_analysis(char *linea, Stadistics_client **head, int *bytes_per_hour);
void show_list(Stadistics_client *head);
void check_client(Stadistics_client **head, int bytes, int hora, const char *ip);

#endif