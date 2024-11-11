#!/bin/bash

: 'Given two integers, x and y, identify whether x<y or x>y or x=y .

Exactly one of the following lines:
- X is less than Y
- X is greater than Y
- X is equal to Y

Input Format

Two lines containing one integer each ( and , respectively).

Constraints

-

Output Format

Exactly one of the following lines:
- X is less than Y
- X is greater than Y
- X is equal to Y
'

read x
read y

if [[ $x -lt $y ]]; then
    echo "X is less than Y"
elif [[ $x -eq $y ]]; then
    echo "X is equal to Y"
else
    echo "X is greater than Y"
fi