#!/bin/bash

: 'Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).

Input Format

A text file containing N lines of ASCII characters.

Constraints
1<=N<=100

Output Format

For each line of input, print its  character on a new line for a total of  lines of outpup'


while read line; do
    echo "$line" | cut -c2-7
done