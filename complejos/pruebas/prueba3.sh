#!/bin/bash

: 'Read in one character from STDIN.
If the character is 'Y' or 'y' display "YES".
If the character is 'N' or 'n' display "NO".
No other character will be provided as input.

Input Format

One character

Constraints

The character will be from the set {yYnN} .

Output Format

echo YES or NO to STDOUT.'

read -n 1 char

if [[ $char == 'Y' || $char == 'y' ]]; then
  echo "YES"
elif [[ $char == 'N' || $char == 'n' ]]; then
  echo "NO"
fi