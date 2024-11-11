#!/bin/bash

: 'Given N lines of input, print the 3rd character from each line as a new line of output. It is guaranteed that each of the n lines of input will have a 3rd character.

Input Format

A text file containing N lines of ASCII characters.

Constraints
1<=N<=100

Output Format

For each line of input, print its  character on a new line for a total of  lines of outpup'

read N

for((i=0; i<N; i++)); do
    read lines
    #almacenar en un array
    arr+=("${lines:2:1}")
done

#imprimir los elementos del array
for i in "${arr[@]}"; do
    echo "$i"
done

########################################################################

N=1
while [[ $N -ge 1 && $N -le 100 ]]; do
        let N++
        read n
        echo "$n" | cut -c 3
done
