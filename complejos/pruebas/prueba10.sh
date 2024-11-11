#!/bin/bash

: 'Given a tab delimited file with several columns (tsv format) print the first three fields.

Input Format

A tab-separated file with lines of ASCII text only.
Output Format

The output should contain N lines. For each line in the input, print the first three fields.'

while read line; do 
    echo "$line" | cut -f 1-3
done