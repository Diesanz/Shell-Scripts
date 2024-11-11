#!/bin/bash

: 'Given N integers, compute their average, rounded to three decimal places.

Input Format
The first line contains an integer, N.
Each of the following N lines contains a single integer.

Output Format
Display the average of the N integers, rounded off to three decimal places.

Input Constraints
1<=N<=500
-10000<=x<=10000 (x refers to elements of the list of integers for which the average is to be computed)'

read int

if [[ $int -lt 1 || $int -gt 500 ]]; then
    exit 1
fi

sum=0

for (( i=0; i < $int; i++)); do
    read num

    if (( num < -10000 || num > 10000 )); then
        exit 1
    fi

    sum=$((sum + num))
done


average=$(echo "$sum / $int" | bc)

printf "%.3f\n" "$average"

