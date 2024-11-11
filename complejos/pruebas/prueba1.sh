#!/bin/bash
: '
Given two integers, int1 and int2, find their sum, difference, product, and quotient.

Input Format
Two lines containing one integer each (int1 and int2, respectively).

Constraints
-100 <= int1, int2 <= 100
int2 ≠ 0

Output Format
Four lines containing the sum (int1 + int2), difference (int1 - int2), 
product (int1 * int2), and quotient (int1 / int2), respectively.
(While computing the quotient, print only the integer part.)
'


read int1
read int2

if [[ $int1 -gt -100 &&  $int1 -le 100 && $int2 -gt -100 && $int2 -le 100 && $int2 -ne 0 ]]; then
    echo $(($int1 + $int2))
    echo $(($int1 - $int2))
    echo $(($int1 * $int2))
    echo $(($int1 / $int2))
else
    echo "Error: Inputs must be integers between -100 and 100, excluding 0."
fi