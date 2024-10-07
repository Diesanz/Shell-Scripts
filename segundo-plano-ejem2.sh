#!/bin/bash

# Función para manejar la señal de interrupción (Ctrl+C)
function handle_sigint() {
    echo "Interrupción detectada. Terminando trabajos en segundo plano..."
    kill $(jobs -p) 2>/dev/null
    exit 1
}

# Atrapar la señal SIGINT (Ctrl+C) y llamar a la función handle_sigint
trap handle_sigint SIGINT

# Función para iniciar trabajos en segundo plano
function iniciar_trabajos() {
    echo "Iniciando trabajos en segundo plano..."
    
    # Trabajo 1: Espera 5 segundos y luego imprime
    (sleep 5; echo "Trabajo 1 completado.") &

    # Trabajo 2: Espera 10 segundos y luego imprime
    (sleep 10; echo "Trabajo 2 completado.") &

    # Trabajo 3: Simula un comando largo, espera 15 segundos y luego imprime
    (sleep 15; echo "Trabajo 3 completado.") &
}

# Función para monitorear los trabajos
function monitorear_trabajos() {
    echo "Trabajos en segundo plano actuales:"
    jobs -l  # Muestra información detallada sobre los trabajos
}

# Función para esperar a que los trabajos en segundo plano terminen
function esperar_trabajos() {
    echo "Esperando a que todos los trabajos en segundo plano finalicen..."
    wait  # Espera a que todos los procesos en segundo plano terminen
    echo "Todos los trabajos han finalizado."
}

# Función para reiniciar un trabajo en segundo plano si termina inesperadamente
function reiniciar_trabajo() {
    echo "Reiniciando trabajo en segundo plano que ha fallado..."
    (sleep 8; echo "Trabajo reiniciado completado.") &
}

# Función para matar trabajos específicos
function matar_trabajos() {
    echo "Matando todos los trabajos en segundo plano..."
    kill $(jobs -p) 2>/dev/null
    echo "Todos los trabajos han sido terminados."
}

# Función principal que controla el flujo
function main() {
    # Iniciar trabajos en segundo plano
    iniciar_trabajos

    # Monitorear trabajos activos
    monitorear_trabajos

    # Pausar para ver cómo los trabajos continúan ejecutándose
    sleep 2
    echo "Trabajo principal continúa ejecutándose mientras los trabajos en segundo plano avanzan..."

    # Monitorear nuevamente después de un tiempo
    sleep 4
    monitorear_trabajos

    # Simular fallo de un trabajo y reiniciar
    echo "Simulando fallo de un trabajo en segundo plano..."
    sleep 1
    reiniciar_trabajo

    # Volver a monitorear tras el reinicio
    sleep 4
    monitorear_trabajos

    # Esperar que todos los trabajos finalicen
    esperar_trabajos

    # Salir limpiamente
    echo "Fin del script."
}

# Ejecutar la función principal
main
