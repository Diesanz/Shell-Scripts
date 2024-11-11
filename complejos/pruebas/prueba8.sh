#!/bin/bash
: 'Given N lines of input, print the 2nd and 7th character from each line as a new line of output. It is guaranteed that each of the n lines of input will have a 3rd character.

Input Format

A text file containing N lines of ASCII characters.

Constraints
1<=N<=100

Output Format

For each line of input, print its  character on a new line for a total of  lines of outpup'

while read line; do
    echo "$line" | cut -c 2,7
done